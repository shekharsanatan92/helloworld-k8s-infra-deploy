## Infra Setup for Hello World PHP application

#########################################

Infrastructure as Code used: Terraform

##########################################

This project uses Terraform modules by AWS to deploy an EKS cluster alongwith network components, such as VPC, public/private subnets, gateways, etc on AWS  
***Use terraform version >= 0.13***

To run this project, 
- Navigate to terraform directory
- Initialise terraform
```
terraform init --backend-config=../environments/<env_name>/backend.tf
```
- Run terraform plan
```
terraform plan -var-file ../environments/<env_name>/terraform.tfvars 
```

> Refer the below Hello World PHP app repository for information on deployment: 
> https://github.com/shekharsanatan92/helloworld-k8s-app-deploy.git
