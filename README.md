# Implementing_Azure_Solutions
Implementing Microsoft Azure Infrastructure Solutions

Azure Identities Environment Setup:
1. How to create web app.
2. How to create enterprise application and register it.
3. How to create virtual Network
4. How to create virtual Mechines

Configuring virtual Networks:

Note: Before delating virtual Network you must delate the Vitual mechines, Public Ip, Network interface assosiated with it. 
1. How to create a Virtual Network and add a Subnet(10.0.1.0/24) & Gateway(10.0.2.0/24).
2. How to create a virtual ubuntu mechine and connect it through putty. 
Below five are Just mentioned the Links In the video.
3. Site To Site VPN
4. Express Route Pricing
5. VPN Devices
6. Point-to-site
7. VPN Gateway

Storage Strategy Environment Setup:

1. Two Storage accounts and adding three containers blobs to that storage accounts.
2. Can also view over storage accounts to azure storage explorer. You can download and install it.
3. How to generate a VHD file for the windows desktop client.
4. When connected to the remote desktop you must go to the C/windows/system32/sisprep/sysprep.exe/ --> Run that execuatble and click generalize and press ok to shutdown the remote desktop.
5. Inorder to create the VHD file we must have to create a windows client and connect and shutdown and stop the windows client and Go to Windows VM and download the VHD file.
6. How to create a Stream analytics Job.
7. How to create a Datalake Storage Gen1 & Key vault.

Azure App Service Apps Environment Setup:

1. How to create a web app ? while creating a web app you have to choose the service plan, So it provides the Features (custom domain, autoscale, daily backups, traffic manage, staging slots), Hardware( CPU, memory, storage) etc.. after creating the web app you can change the plan anytime you want by going to the scale up icon. 
2. How to create a Deployment slots. And swap the deployment slots from development to production.
3. Creating the FTP/Deployment credentials, So you can access the files using filezella.
4. How to deploy the web App using visual Studio.
5. How to create a Notification Hub.
6. How to publish a webApp to the Azure portal.
7. How to setup the Diagonistics logs for the App service and use the log stream. 

ARM Templates Environment Setup:

Browser server communication JSON & ARM templetes.

1. How to deploy a Templete Deployment.

ARM templete we can deploy each and every tool in the resource group including resource group everthing can be written in Templete noting but the Infrasture as a code, & change as per our needs.

Azure Security and Recovery Services Environment Setup:

1. How to create a Key vault: A key vault is a place to store criptographic keys using hardware security models, maintaining keys in managed place, also Microsoft is not awolled to see this keys.
2. How to create a Key vault and add keys in key vault.
3. How to create a scretes in the keyvault, it is noting but like a API Key, database key etc.. it can be only authorized by the application we kept to authorized. we can add an SSL cretificates from the computer or you can manually create a certificate.
4. How to create a resource group and add security polices(that users can access the data, like an owner) for that resource group.
5. How to add a user and assign them one of them security roles.
6. How to assign a user for add permissions in the security center.
7. How to create a recovery services vault( noting but taking backup of your virtual machine, SQL Databases etc.. in the app or On-premises) in the Virtual Machine and enabling it and Doing backup manually. If you want to install Onpremises backup then you Just dowlaod the agent.
8. How to create an MY APP Secure sign-in extension. (For quickly access the Apps). 

Azure Operations Environment Setup:

1. Powershell runbooks are used to automate the management of the resources for your organization, that are not located in the azure, including tracking,inventory etc..
2. How to setup a Automation account.
3. How to add a New runbook to the automation account created.
3. How to createa a log analytics. ( Allow you to capture data within log systems in the Hybrid environments, Automate, and manage infrasture easily).
4. How to create a log analytics in the OMS(Operations management suite)  work space.

Implement Azure AD B2C

1. Create an Azure Active directory.
2. How to add an Active directory to your Azure subcription and Add resource group to it.
3. How to create an Multi-Factor authentication in the Azure Active directory (Azure B2C).

Implement Azure AD B2B Collaboration:

1. How to add third patry users to the Organization to access there Resources.
2. How to connect Azure portal through TenentID through Powershell. And add User.
3. Command to install a Module: install-Module AzureADPreview.
4. Command to connect to Azure Portal from PowerShell : Connect-AzureAD -TenantId 776f0585-c915-45f4-b28d-51fb3426af81 (ID can be get in Activedirectory -> Properties -> DirectoryID.
5. Command to create a user from Powershell: New-AzureADMSInvitation -InvitedUserEmailAddress naveendasari571@gmail.com -SendInvitationMessage $True -InvitedRedirectUrl "http://myapps.microsoft.com"

Implement Social Identity Provider Authentication:

1. How to setup a user facebook as a Social Identity provider in order to login acess Portal & New user registration.

Manage Domains with Azure Active Directory Domain Services:

1. How to create a subnet within Virtual Network specifically for azure active directory. 
2. How to create a Active directory domain services. 
3. How to connect virtual mechine Join to the Azure AD Domain services.
4. How to add the Group policy management for the End-User.

Integrate with Azure Active Directory (Azure AD):

1. How to add Custom Domain to AD Connect.

How to Monitor On-Premises Identity Infrastructure and Synchronization Services with Azure AD Connect Health:

Leverage Microsoft Graph API:
 
Microsoft Graph API is a RESTful API built on top of the Office 365 service that gives your developers access to an extraordinary amount of information specific to your end users. This allows their applications to provide an amazing level of customization and personalization.

#Implementing Virtual Networks

1. How to Congifuring Virtual Networks which is having two subnets.
2. How to deploy VM to virtual Network.
3. How to create, Public, Private, Static IP Address for this Virtual Mechines.
4. What is virtual Network peering.
5. How to setup Network  Security Groups.
6. How to setup VNETS.
7. How to create a Load balancer and internal backend Pool.
8. How to creata a BankEnd Pool and adding a load balancer rules for a load balancer associated internally with single virtual Mechine.
9. How to setup the health Probe within the load balancer.
10. How to create an Application gateway and configure the load balancer and subnets attached to it.

Implement Azure Storage Blobs and Azure Files

1. Page Bolb: Talk about the disk.Read and write the data, Pre-sized block. File editting, multiple peopele can assign and rewrite at the same time. Read and write, can use as disk. 
2. Block Blob: Talk about the Page Types. Distributed file system, Large bloack of data, fault tolerance and performace, Files that need to be acess by HTTP END POINT, vitual mechine power shell scripts. 
3. Queues: Back-end, Small data, simple messages.

Part -2

1. How to create and setup Metadata for the blob container. 
2. Why to use page blob in the VHD format, the advantage through API we can acess the specific disks only. Disks for VM Machines, Read and write specific sectionsfor a virtual Disks, Videos and audios editing.
3. How to secure the Bolbs at the Storage account levels with Firewall and Virtual Networks.
4. Table: Sturucted or semi structured. Small Excel files, distributed file storage, distributed disk storage, Speed.
5. File share: SMP File share, onpremises to azure, Based on Page blob and the disk, page blobs are mouted to vitual storage.

Part -3 

1. How to do the stream analytics Job means convert the storage Blob to the Azure Data lake in the Table format. This allow the business people to grabe the data in the Excel format, documnets in the readle format.

Part -4

1. How to design blob hiaricy, blob storage, implement a snap shot of the blob, manage SMB or file storage.
2. How to copy the Files to from the local to the Blob storage files.
3. How to createa a file share in the Storage account and connect the VM'S attached to it and copy to sample document from that virtual mechine to the file shared folder. 
4. How to creaete a snap shot for the blob storage, create snapshot, manage snapshots, promote snapshots, Delate.

Implement Azure Storage Blobs and Azure Files - Configure Custom Domains:

1. How to create Custom Domain, and register the Domain in the Godaddy domain registration and access the container blob to the make public and see the Hello -World output.
2. How to create an Azure CDN and register the domain with GoDaddy domain CNAME Records and add the Endpoints for custom domain for the Content delivery Network.

Manage Access for storage account resources:

1. How to create Account access keys and storage access signatures. Read, write, list,view the access polies.
Legal Hold: Permenently block the access for a perticular container in the blob.
Time Based: Time limit is mentioned to block the access for a container in the blob.

Implementing Azure Storage strategy:

1. How to create enable azure diogonotics azure storage accounts, How to analyze log entries that are made read write list of a storage blob. 
2. How are reads, writes, been authorized, where they are comming from, it can be done through Diagnostics logs.
3. How to generate the Diagonistic logs. 

Implement Storage Encryption:

1. How to implement Encryption and datalake storage in the role based security. 
2. How to encrypt keys from the azure storage account encryption and store it in the Key vault. Can also keep our own keys or we can also select from the Key vault. 
Note: Storage account and key vault should be in the same region.
3. How to create a key picker, and How the create an encrytpion for the datalake store and how the user is assigned to the user to access the datalake store with create polices, by assign him roles. 

Deploy Workloads on Azure Resource Manager (ARM) Virtual Machines (VMs) - Part 2:

1. Two VMs windows & Ubuntu VMs in the centralUS, don't have Public IP address.
2. Two VMs Windows & Ubuntu VMs in the EastUS, have the Public IP address. (How we have configured the Security group for this Public IP address).

From the above two points. Shown the senario below:
--> How to connect to the Two VMs in tthe CentralUS. we have to setup  the Point to site Network then if we press connect then we can connect with the Private IP address of the Ubuntu Virtual mechine by using the command.
          ssh -i Azure-Course-key.pem latoysadmin@privateIP 
--> How to connect to the second VMS in the central US for the windows desktop. By downloading the RDP file, you can connect to that.

-->How to connect to the VMs in the East VMs which has the public IP address. By using putty. 

--> How to create a VMs that has the own licence with Microsoft, and it cost less price for the virtual Mechine.

Perform Configuration Management - Part 1:

--> VM Agent custom script extensions: Agent that runs on the Azure VM that allows you to execute single one off scripts on that agent to perform any number of tasks.

In the above section it mainly discribes that how to add a New roles (For Example: Node configurations like Installing web servers, IIS disk files) to the Virtual mechines in the Azure portal. This is done through the Automation account by adding the IIS Disc config file to the DSC(Desired state configuration) and complie the changes the existing virtual mechine. 

They by they we have to change number of node configurations in the multiple existing vitual mechines so this is the right section to view. 

Perform Configuration Management - Part 2:

We can debug the Azure VM's through the VSTS(Visual studio team services) in the Cloud Exploxer and debug the VM's logs.

While developing an application, there is always a point when you need to begin testing in your final environment. Azure gives you a remote debugging tool, allowing you to access real-time application and system logs on your remote machine.

This lets your developers quickly test and debug apps, leading to a shorter development cycle. 

Design and Implement VM Storage - Disk Encryption:

Why ? Control of Encrytption keys, key vaults, Data, disk encryption keys is stored in the Key vault, complete contol of VMs.
1. How to setup a Disc Encryption: Azure by default while creating storage service encrytption. But we have to get control of the Disk encryption. How ? 

Azure's Data at Rest Encryption automatically encrypts your data as it is stored in an Azure storage account. Sometimes though, regulatory requirements or business practices require you to have physical or logical control of your access keys.

Using disk encryption, you can forcibly encrypt data stored on VMs and other services, using your keys to keep everything in your control.

Monitor ARM VMs:

we will cover how to:

1.Configure ARM VM monitoring
2.Configure alerts. ( When the CPU Usage Threshold is more then 75% get an Aleart by Email to a particular group)
3.Configure diagnostic and Monitoring storage location. ( Enable the guest level monitoring in the VM, and enable log aleart like Cretical, audit failure, system, admistrivate logentries Info, to the storage account )

Manage ARM VM Availability:

1. How to configure VM Availability sets. Load balancer and Availabilty sets.

SaaS, SLAs, and uptime are crucial as businesses rely more on cloud services.
Creating the infrastructure to support high availability requires tooling that organizations previously had to write from scratch.

Nowadays, Azure provides many tools to facilitate the management of Highly Available resources.
In this video we will cover:

1. Configure multiple ARM VMs in an availability set for redundancy
2. Configure each application tier into separate availability sets
3. Combine the Load Balancer with availability sets
4. Configure fault domains and update domains

We have to create an Availabilty set and launch a VM by keeping that Availabilty set. 

5. How to launch a VM with that Availabilty set through Power shell. Before doing that make sure that you create a Subnet, Security group and Network. 
6. How to create a Load balancer with the Availabilty set.

Scale ARM VMs:

How to create a VMSS in Azure through Power shell, Script can be seen in the video and can be dowloaded from the study group.

1. Give the names of the Resource group, scale set name, location.
2. Script to create a new resource group, subnet, network.
3. create a new Public IP address. 
4. Assign to the front of the load balancer of the virtual mechine scale set.
5. creaet the front end and back end pool of the load balancer.
6. create the Inbound NAC for port 3389 RDP Port. 
7. create the loab balancer by giving the names of front end backend pool of the load balancer.
8. create a health prob of the load balancer.
9. create a load balancer rule config. ( how the load balancer route traffic).
10. set and update the load balancer configuration.
11. Grabe an IPConfig for the scale set.
12. Grabe the Config and where this sclae set has to be like location, policy, automatic. 
13. Grabe the images that is going to be installed on the instances. 
14. Assign the os profile, like user name and password for the server.
15. Assign the NIC Card configuration for the virtual mechines.
16 .Finally the command to create the VMSS(Virtual mechine scale sets).

Manage Containers with Azure Container Services:

Containers are appearing everywhere. They're in back-end processing, in web applications, and in security. Containers provide the ability to preconfigure a workload infrastructure and run on demand. They do all this while sharing compute resources and minimizing setup time and storage costs.

In this lesson we will cover how to:

Create and manage container images
Implement Azure Container Registry
Migrate container workloads to and from Azure

1. How to create a container registry from the power shell.
2. push the docker images to the azure container registry.

Manage Containers with Azure Container Services - Part 2:

1. How to deploy a kubernetes cluster into azure container services, how to deploy a container into that cluster.
2. How to push the containers from the azure container registry to the Kubernetes cluster.

If one container is good, more is better. That is the mantra of Kubernetes. Using Kubernetes you can organize a pod of containers to perform a specific task. Once it is finished, tear it down. Ready to run it again? No problem, just spin them all up with a single command.

In this lesson we will cover how to:

Deploy a Kubernetes cluster in ACS
Configure for open-source tooling

Manage Containers with Azure Container Services - Part 3:

1. How to scale up ACS Cluster. 

If one container is good, more is better. That is the mantra of Kubernetes. Using Kubernetes you can organize a pod of containers to perform a specific task. Once it is finished, tear it down. Ready to run it again? No problem, just spin them all up with a single command.

In this lesson we will cover how to:

Scale applications using Docker, DC/OS, Swarm, or Kubernetes
Monitor Kubernetes by using Microsoft Operations Management Suite (OMS).

Deploy Web Apps - Part 1:

The majority of businesses using Azure for compute infrastructure also maintain a Web App or two. Some use these Web Apps as internal tools, others as their core service delivery platform.

Azure has many amazing tools for managing the entire life-cycle of a web application.
In this lesson we will cover how to:

1.Determine when to use App Service Environment (ASE)
2.Create App Service plans
3.Create a Web App within an App Service plan
4.Migrate Web Apps between App Service plans

1. How to create an App service Plan using Powershell. 

$resourceGroup = "LAToysWebUI50Resource"
$appServicePlanName = "LAToysWebUIPlan2"
$location = "South Central US"
$tier = "Free"
$workerSize = "small"

New-AzureRmAppServicePlan -ResourceGroupName $resourceGroup -Name $appServicePlanName -Location $location -Tier $tier -WorkerSize $workerSize

2. How to create an App service Plan using Azure-CLI.

az account set --subscription "823432b0-785f-4b8c-9e5f-b237d0893118"

$resourceGroup = "LAToysWebUI50Resource"
$appServicePlanName = "LAToysWebUIPlan3"
$sku="FREE"
$location = "South Central US"
az appservice plan create --resource-group $resourceGroup --name $appServicePlanName --location $location --sku $sku
 
3. How to create a WebApp in Exsisting App Service Plan in PowerShell. 
$resourceGroup = "LAToysWebUI50Resource"
$appServicePlanName = "LAToysWebUIPlan"
$location = "South Central US"
New-AzureRmWebApp -ResourceGroupName $resourceGroup -Location $location -AppServicePlan $appServicePlanName -Name "LATOysWebApp3"

4. How to create a WebApp in Exisiting App Service Plan in Azure CommandLine.

az webapp create --resource-group $resourceGroup --name "LAToysWebUI2" --plan $appServicePlanName

Deploy Web Apps:

The majority of businesses using Azure for compute infrastructure also maintain a Web App or two. Some use these Web Apps as internal tools, others as their core service delivery platform.

Azure has many amazing tools for managing the entire life-cycle of a web application.

In this lesson we will cover how to:

Define deployment slots
Select and use appropriate deployment methods including Git, FTP, and Cloud Sync
Create, configure, and deploy packages
Roll back deployments
Manage Web Apps by using Azure PowerShell and Azure-CLI

$resourceGroup = "LAToysWebUI50Resource"
$appServicePlanName = "LAToysWebUIPlan"
$webAppName = "LATOysWebUIApp3"
$stagingSlotName = "staging"
$developmentSlotName = "develop"
$productionSlotName = "production"
$qaSlotName = "qa"
New-AzureRmWebAppSlot -ResourceGroupName $resourceGroup -Name $webAppName -AppServicePlan $appServicePlanName -Slot $stagingSlotName

$productionSite = Get-AzureRmWebAppSlot -ResourceGroup $resourceGroup -Name $webAppName -Slot $productionSlotName	

#we are going to copy the content of productionSite to development site. Below command don't work So I created the new slot.
New-AzureRmWebAppSlot -ResourceGroupName $resourceGroup -Name $webAppName -Slot $developmentSlotName -AppServicePlan $appServicePlanName -SourceWebApp $productionSite

#New-AzureRmWebAppSlot -ResourceGroupName $resourceGroup -Name $webAppName -AppServicePlan $appServicePlanName -Slot $developmentSlotName

New-AzureRmWebAppSlot -ResourceGroupName $resourceGroup -Name $webAppName -AppServicePlan $appServicePlanName -Slot $qaSlotName

#The below command will Swap from staging to develop

Swap-AzureRmWebAppSlot -ResourceGroup -Name $webAppName -SourceSlotName $stagingSlotName -DestinationSlotName $productionSlotName

#If we want to rollback simply see the video again when this topic is required.

Configure Web Apps:

Modern Web App design removes the configuration of the app from the application logic. With the configuration gone, you are free to concentrate on writing reusable, modular, and secure code.
Azure provides excellent tools for managing all of your Web App configuration requirements.
In this lesson we will cover how to:

Configure custom domains
Configure SSL bindings
Manage App Service backups
Configure authentication and authorization for Web Apps
Define and use app settings, connection strings, handlers, and virtual directories
Configure Web App notifications

Configure Diagnostics, Monitoring, and Analytics:

The first step of any tuning or troubleshooting procedure is to get your bearings. The more you can learn about how your application is functioning, the better you can troubleshoot any problems as they arise.
Azure gives developers easy to access tools for viewing, searching, and alerting based on diagnostic logs, metrics, and events.
In this lesson we will cover how to:

Retrieve diagnostics data
View streaming logs
Configure endpoint monitoring
Configure alerts
Configure diagnostics
Monitor Web App resources

 Configure Web Apps for Scale and Resilience - Part 1:

Most customer contracts now cover some sort of SLA (Service Level Agreement) with uptime guarantees and obligated response times.

By using the HA (High Availablity) tools available in Azure, you can easily architect your application to comply with even the most demanding SLA uptime guarantees.

In this lesson we will cover how to:

Configure auto-scale using built-in and custom schedules
Configure by metric
Change the size of an instance


Configure Web Apps for Scale and Resilience - Part 2:

Most customer contracts now cover some sort of SLA (Service Level Agreement) with uptime guarantees and obligated response times.
By using the HA (High Availablity) tools available in Azure, you can easily architect your application to comply with even the most demanding SLA uptime guarantees.

In this lesson we will cover how to:

Configure Traffic Manager

1. How to create an Traffic Manager through powershell.
2. How to create an End-Points from regeions with in the Traffic manager through powershell.

Configure Diagnostics, Monitoring and Analytics - Remote Debugging:

Similar to remote debugging on a VM, Azure's Web App remote debugging feature allows you to connect directly to your running application. Azure provides a remote debugging tool that allows you to access your web application and system logs in real time on the Azure platform.
This allows developers to quickly test and debug apps, leading to a shorter development cycle.

In this lesson we will cover how to:

Enable remote debugging
Use remote debugging

Implement ARM Templates:

ARM Templates allow you to have complicated, complex infrastructure templates that are ready to launch at a moment's notice. The templates can function as a starting place for building customer or project specific infrastructure, or they can easily function as backup or schema documents for your resources.
Here at Linux Academy we make extensive use of ARM templates to help define our labs and our infrastructure.

In this video we will cover how to:
Author ARM templates
Create ARM templates to deploy multiple ARM Resource Providers' resources of different types, with count loops and Marketplace items
Deploy templates with PowerShell, Azure CLI, Azure Portal, and REST API.

Control Access :

Access control policies are a major contributor to the long-term success of any Azure project. In fact Microsoft publishes a best practices guide here: Azure Enterprise Scaffold.

By using good practices, and the Azure tools at hand, you can craft a robust security policy that still gives your users the freedom to create good products.

In this lesson we will cover how to:

Leverage service principals with ARM authentication
Use Azure Active Directory Authentication with ARM
Set management policies
1. How to createa a service principle within the Powershell and azure cli.
2. How to create access polices.

Control Access Part - 2:
Access control policies are a major contributor to the long-term success of any Azure project. In fact Microsoft publishes a best practices guide here: Azure Enterprise Scaffold.

By using good practices, and the Azure tools at hand, you can craft a robust security policy that still gives your users the freedom to create good products.

In addition to solid access and use policies, a final part of a good deployment is locking your resources down. This keeps anyone from inadvertantly, or maliciously, removing or changing your resources.

In this lesson we will cover how to:

Lock resources

Design Role-Based Access Control (RBAC):

Role-based Access Control (RBAC) is another key component to a secure Azure deployment. RBAC allows you to create granular control roles that can be assigned to applications, users, and contractors.

This gives you the ability to collaborate, without giving up complete access to your system.

In this lesson we will cover how to:

Secure resource scopes
Implement Azure RBAC standard roles
Design Azure RBAC custom roles

1. How to do, assign custom roles through the azure command line.

Manage Data Protection and Security Compliance - Part 1:

Data security breaches are dominating the headlines lately. Azure has responded by making it easy to manage your data security and integrity, both automatically and with custom configurations.

The Azure Key Vault gives you a place to store and manage secret keys. By utilizing a common security Vault, you can more easily manage application and employee on-boarding and off-boarding. By storing your secrets in the Azure Key Vault, no developer or application ever has actual possession of your secrets, they only have the ability to use them.

In this lesson we will cover how to:

Create and import encryption keys with Key Vault
Automate tasks for SSL/TLS certificates
Prevent and respond to security threats with Azure Security Center

1. How to creata a Key vault.
2. How to generate RSA Key in the Keyvault.
3. How to create an Encrytption key for a Keyvault within the Powershell or Azure-CLI.
4. How to add SSL Cirtificates to over key vault.
5. How to create a Certificate authorized by RA.
6. How to create a import and generate a SSL Certificate through powershell.
7. How to automate SSL Certificate in web app.
8. we can use multiple web app for single ssl certificate.

Manage Data Protection and Security Compliance - Part 2:

Azure AD gives you a foundation upon which to build great security practices. By using a single access credential your end-users no-longer need to manage password complexity or requirements for outside sites.
Your IT department can manage the sign-up and provisioning of SaaS accounts, connecting to new service providers via SAML (or any of several SSO protocols).
And your end-users can manage their own passwords if they have forgotten their credentials or need to change a password because of security requirements. All of this greatly reduces the pressure on your help desk.

In this lesson we will cover how to:

Configure federation and password based single sign-on with SaaS applications
Add users and groups to applications
Revoke access to SaaS applications(Example Twiter, facebook)
Configure access to SaaS applications

1. How to install chrome extension for a sigle singon.
2. How to configure SAML Applications.( Example: Go-to meetings).
3. How to create a SAML Certificate.

Implement Recovery Services:

Disaster recovery and back-up are huge components of an IT professional's job description. The people at Azure have listened to the challenges that most IT admins face in regards to backup and site recovery. Their answer is the Site Recovery Vault. It is an easy to use and highly configurable set of tools for backup, disaster planning, and disaster testing.

This video will primarily cover how to backup a single VM or fleet of VMs, focusing on these:

Creating a backup vault
Deploying a backup agent
Backing up and restoring data, using of snapshots and Geo-replication for recovery

Implement Recovery Services - Part 2:

In the world of SLAs and contractually obligated response times, being familiar with site recovery and disaster planning is mandatory. Azure's disaster recovery service allows you to easily plan and execute failovers, and it lets you practice ahead of time.

In this video we will cover how to:

Implement DR (Disaster recovery) as service
Deploy Azure Site Recovery (ASR) agent, configure ASR
Configure ASR one-click failover

Enhance Cloud Management with Automation:

As IT infrastructure grows, your need for automation and organization is paramount. With Azure Automation Accounts, tasks spanning multiple machines or resource groups can easily be scripted.

Beyond simple scripting, Azure Automation groups give you the tools to force configuration state on machines, and monitor rogue software installs. The automation tools also include change tracking for servers, update management, and software inventory tools.

All of these data sources can be tied back to Azure Log Analytics for easy searching, alerting, and charting.

In this lesson we will cover how to:

Implement PowerShell runbooks
Integrate Azure Automation with Web Apps

Collect and Analyze Data Generated by Resources in Cloud and On-Premises Environments:

As the compute and service resource offerings have matured, Azure has begun to add features to, and consolidate the UI/UX of, its support tools. One of the greatest tools in that toolbox is Azure Log Analytics. It's built on top of a newly integrated query language from Application Insights, which is yet another great tool, made for powering analytics for web applications.

In this lesson we will:

Collect and search across data sources from multiple systems
Build custom visualizations
Transform Azure activity data and managed resource data into an insight with flexible search queries
Monitor system updates and malware status
Track server configuration changes by using Azure Log Analytics

1. How to create a Log analytics work space through poershell.
2. How to view the Metadata for example how many mechines has a Anti-Malware protection at a time we can see in the Azure log analytics.
