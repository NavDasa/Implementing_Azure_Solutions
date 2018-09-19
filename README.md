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

