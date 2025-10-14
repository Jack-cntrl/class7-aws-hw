 Change region > Asia Pacific (Tokyo)
 
 > EC2 Dashboard
 > Create security group
  - Inbound rule (HTTP), Source (Anywhere-IPv4)

 > Launch instance
  - Application/Instance: leave default
  - Key pair: proceed without a key pair
  - Network settings: Select existing security group (created above)
  - Advanced details: User data > paste EC2 script
  - > Launch instance
  - > Confirm instance by testing public DNS page
  
 > Teardown instance
  - Instance state >click Instance state > terminate/stop instance
  - Navigate to Security Groups > click security group > Actions > Delete security groups