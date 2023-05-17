# Projects

Feel free to take a look and take a template or two!

Some of these templates go beyond free tier. User beware.

## EC2 TO SERVERLESS
### Stage 1:
Resources created:
- VPC (Vpc) (1)
- Subnet (Subnet1) (1)
- InternetGateway (IG) (1)
- VPCGatewayAttachment (IGAttach) (1)
- RouteTable (RouteTable) (1)
- Route (RouteOut) (1)
- SubnetRouteTableAssociation (RouteTableAssociation1) (1)
- SecurityGroup (SecurityGroup) (1)
- Role (EC2Role) (1)
- InstanceProfile (EC2InstanceProfile) (1)
- Instance (EC2Webserver) (1)

Requires:
- CloudWatch Agent config in Parameter Store as "AmazonCloudWatch-linux"
- awscli credentials to complete the required creates/modifications
- pre-generated ssh key for the Ansible connection. I use a static testing key for simplicity.
- s3 bucket at template-specified location containing your webserver files.

### Stage 2:
Changes: 
1. Switch from CloudFormation to Terraform to deploy resources and Ansible to config the instance.
2. Change coming soon page to a page to demonstrate user input then recalling that input. Users can register @register.php then submit fortunes @submit_fortunes.php. Finally, they can retrieve a random fortune, along with the submitting user's username @random_fortune.php.

Resources created:
- VPC (Vpc) (1)
- Subnet (Subnet1) (1)
- InternetGateway (IG) (1)
- VPCGatewayAttachment (IGAttach) (1)
- RouteTable (RouteTable) (1)
- Route (RouteOut) (1)
- SubnetRouteTableAssociation (RouteTableAssociation1) (1)
- SecurityGroup (SecurityGroup) (1)
- Role (EC2Role) (1)
- InstanceProfile (EC2InstanceProfile) (1)
- Instance (EC2Webserver) (1)

Requires:
- 2 Passwords in Secrets Manager:
  - ${aws_secret_location}/db_root_pass
  - ${aws_secret_location}/db_user_pass
- CloudWatch Agent config in Parameter Store as "AmazonCloudWatch-linux"
- awscli credentials to complete the required creates/modifications
- pre-generated ssh key for the Ansible connection. I use a static testing key for simplicity.
- s3 bucket at template-specified location containing your webserver files.
