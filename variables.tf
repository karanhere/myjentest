//provider vars//
variable "subscription_id" {
    type = string
    sensitive   = true
}
variable "tenant_id" {
  type = string
  sensitive   = true
}
variable "client_id" {
  type = string
  sensitive   = true
}
variable "client_secret" {
  type = string
  sensitive   = true
}

// image gallery vars //
variable "image" {
  type = string
  sensitive = true
}
variable "imageversion_name" {
  type = string
  sensitive = true
}
variable "gallery" {
  type = string
  sensitive = true
}
variable "image_rg" {
  type = string
  sensitive = true
}

//AVD Vars//
    variable "resource_group_location" {
    default     = "centralus"
    description = "Location of the resource group."
    }

    variable "rg_name" {
    type        = string
    description = "Name of the Resource group in which to deploy service objects"
    }

    variable "workspace" {
    type        = string
    description = "Name of the Azure Virtual Desktop workspace"
    sensitive = true
    }

    variable "hostpool" {
    type        = string
    description = "Name of the Azure Virtual Desktop host pool"
    }

    variable "rfc3339" {
    type        = string
    description = "Registration token expiration"
    sensitive = true
    }
    variable "rg_shared_name" {
  type        = string
  description = "Name of the Resource group in which to deploy shared resources"
}

variable "deploy_location" {
  type        = string
  default     = "centralus"
  description = "The Azure Region in which all resources in this example should be created."
}



// Domain vars //
    variable "domain_name" {
  type        = string
  description = "Name of the domain to join"
  sensitive = true
}
variable "domain_user_upn" {
  type        = string
  # do not include domain name as this is appended
  description = "Username for domain join (do not include domain name as this is appended)"
  sensitive = true
}
variable "domain_password" {
  type        = string
  description = "Password of the user to authenticate with the domain"
  sensitive   = true
}
variable "ou_path" {
 description = "OU path in AD"
 sensitive = true
}
variable "aad_group_name" {
  type        = string
  description = "Azure Active Directory Group for AVD users"
}
variable "ad_rg" {
  type        = string
  description = "Name of domain controller resource group"
}
variable "ad_vnet" {
  type        = string
  description = "Name of domain controller vnet"
}

// Session Host vars //
variable "rdsh_count" {
description = "Number of AVD machines to deploy"
default     = 1
}

variable "prefix" {
type        = string
description = "Prefix of the name of the AVD machine(s)"
}
variable "vm_size" {
  description = "Size of the machine to deploy"
}
variable "local_admin_username" {
  type        = string
  description = "local admin username"
}
variable "local_admin_password" {
  type        = string
  description = "local admin password"
  sensitive   = true
}








// Networking vars //
variable "dns_servers" {
  type        = list(string)
  description = "Custom DNS configuration"
  sensitive = true
}

variable "vnet_range" {
  type        = list(string)
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  description = "Address range for session host subnet"
}


variable "resource_tags" {
  type = map(string)
  description = "Resource Tags in Azure"
  
}



