
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.71.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "ce0d2d9d-53fb-40c8-b4b3-585a9e896aa4"
  tenant_id       = "1f36cecc-3aae-4d0a-a4bf-58f3d718802e"
  client_id       = "6fb2a06a-72c5-42c8-b486-3b90e73350c6"
  client_secret   = "4Fh8Q~EKw6okjikMkFlTxQfPRe6k-uOIAXfqGbkn"
}



