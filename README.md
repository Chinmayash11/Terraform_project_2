terraform
 terraform plan -var-file="dev/terraform.tfvars"  
 terraform apply -var-file="dev/terraform.tfvars" --auto-approve 
 terraform destroy -var-file="dev/terraform.tfvars" --auto-approve