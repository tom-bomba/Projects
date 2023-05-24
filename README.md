# Projects

Feel free to take a look and take a template or two!

Some of these templates go beyond free tier. Since these are just play environments, no_log isn't enabled. User beware.

## EC2 TO SERVERLESS
Create a simple webserver on an EC2 instance. It should be able to store/retrieve user-provided info as well as authenticate users. Make it highly available and decouple DB from the frontend. Finally, refactor to allow full serverless implementation: static on s3, backend handled by lambda + API GW.
#### Stage 1:
Simple webserver that displays a single "Coming Soon..." page. Single instance in single AZ.
#### Stage 2:
Webserver allows for user input and deploy with Terraform + Ansible to decouple infrastructure and config.
#### Stage 3:
Create std. image for the webserver. Deploy it using LB + ASG spread across 3 subnets in 3 AZs. Switch DB to Aurora Serverless v2 (3 instances across 3 AZs) to decouple the frontend and the db.
#### Stage 4:
Coming soon...

## Containers

