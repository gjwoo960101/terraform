variable "tenancy" {
    type = string
    description = "OCI Tenancy OCID"
}

variable "user" {
    type = string
    description = "OCI User OCID"
}

variable "fingerprint" {
    type = string
    description = "API key fingerprint"
}

variable "private_key_path" {
    type = string
    description = "Path to the private key file"
}

variable "region" {
    type = string
    description = "OCI region"   
}