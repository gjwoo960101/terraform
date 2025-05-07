terraform {
    required_providers {
        local = {
            source = "hashicorp/local"
        }

        oci = {
            source  = "hashicorp/oci"
        }

    }
}

provider "oci" {
  tenancy_ocid      = var.tenancy
  user_ocid          = var.user
  fingerprint  = var.fingerprint
  private_key_path = var.private_key_path
  region       = var.region
}

# 테스트 구획 생성
resource "oci_identity_compartment" "test_compartment" {
  name          = "terraform-test-compartment"
  description   = "Test compartment"
  compartment_id = var.tenancy 
  enable_delete = false
}