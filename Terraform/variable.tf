variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central US"
}

variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "dev2"
}


#variable "ssh_public_key" {
#  default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
#  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
#}


