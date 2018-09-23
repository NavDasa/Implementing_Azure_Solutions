#Provide your own secure password for use with the VM Instances          #latoysadmin #password: latoysadmin
$cred = Get-Credential

connect-AzureAD -Credential $cred

#Define variable for resource names
$resourceGroupName = "LAToysVMScaleSet"
$scaleSetName = "LAToysWebUIVMSS"
$location = "East US"

#Create a resource group
New-AzureRmResourceGroup -ResourceGroup $resourceGroupName -Location $location

$virtualNetwork = New-AzureRmVirtualNetwork `
  -ResourceGroupName LAToysVMScaleSet `
  -Location EastUS `
  -Name LAToysVMSSNetwork `
  -AddressPrefix 10.0.0.0/16
  
$subnetConfig = Add-AzureRmVirtualNetworkSubnetConfig `
  -Name LAToysVMSSSubnet `
  -AddressPrefix 10.0.0.0/24 `
  -VirtualNetwork $virtualNetwork
  
$virtualNetwork | Set-AzureRmVirtualNetwork 
 
#Create a public IP address
$publicIP = New-AzureRmPublicIpAddress -ResourceGroupName $resourceGroupName -Location $location -AllocationMethod Static -Name "LAToysWebVMSSLBIp"

#Create a frontend backend IP pool
$frontendIP = New-AzureRmLoadBalancerFrontendIpConfig -Name "LAToysWebVMSSFrontEndPool" -PublicIpAddress $publicIP

$backendPool = New-AzureRmLoadBalancerBackendAddressPoolConfig -Name "LAToysWebVMSSBackendPool"

$inboundNATPool = New-AzureRmLoadBalancerInboundNatPoolConfig -Name "LAToysWebVMSSInboundRDPRule" -FrontendIpConfigurationId $frontendIP.Id -Protocol TCP -FrontendPortRangeStart 50001 -FrontendPortRangeEnd 50010 -BackendPort 3389


$lb = New-AzureRmLoadBalancer -ResourceGroupName $resourceGroupName -Name "LAToysWebVMSSLB" -Location $location -FrontendIpConfiguration $frontendIP -BackendAddressPool $backendPool -InboundNatPool $inboundNATPool

Add-AzureRmLoadBalancerProbeConfig -Name "LAToysWebVMSSHealthProbe" -LoadBalancer $lb -Protocol TCP -Port 80 -IntervalInSeconds 15 -ProbeCount 2

Add-AzureRmLoadBalancerRuleConfig -Name "LAToysWebVMSSLoadBalancerRuleConfig" -LoadBalancer $lb -FrontendIpConfiguration $lb.FrontendIpConfigurations[0] -BackendAddressPool $lb.BackendAddressPools[0] -Protocol TCP -FrontendPort 80 -BackendPort 80 -Probe (Get-AzureRmLoadBalancerProbeConfig -Name "LAToysWebVMSSHealthProbe" -LoadBalancer $lb)

Set-AzureRmLoadBalancer -LoadBalancer $lb

$ipConfig = New-AzureRmVmssIpConfig -Name "LAToysWebVMSSIPConfig" -LoadBalancerBackendAddressPoolsId $lb.BackendAddressPools[0].Id -LoadBalancerInboundNatPoolsId $inboundNATPool.Id -SubnetId $subnetConfig

$vmssConfig = New-AzureRmVmssConfig -Location $location -SkuCapacity 2 -SkuName "Standard_DS2" -UpgradePolicyMode "Automatic"

Set-AzureRmVmssStorageProfile $vmssConfig -OsDiskCreateOption "FromImage" -ImageReferencePublisher "MicrosoftWindowsServer" -ImageReferenceOffer "WindowsServer" -ImageReferenceSku "2016-Datacenter" -ImageReferenceVersion "latest"

Set-AzureRmVmssOsProfile $vmssConfig -AdminUsername $cred.UserName -AdminPassword $cred.Password -ComputerNamePrefix "WebVMSS"

Add-AzureRmVmssNetworkInterfaceConfiguration -VirtualMachineScaleSet $vmssConfig -Name "LAToysWebVMSSNetworkConfig" -Primary $true -IPConfiguration $ipConfig 

New-AzureRmVmss -ResourceGroupName $resourceGroupName -Name $scaleSetName -VirtualMachineScaleSet $vmssConfig

New-AzureRmVmss -ResourceGroupName $resourceGroupName -Name $scaleSetName -VMScaleSet $vmssConfig

New-AzureRmVmss `
  -ResourceGroupName $resourceGroupName `
  -VMScaleSet $vmssConfig `
  -VirtualNetworkName  $virtualNetwork `
  -SubnetName $subnetConfig `
  -PublicIpAddressName $publicIP `
  -LoadBalancerName $lb `
  -UpgradePolicyMode "Automatic"
