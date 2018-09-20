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
