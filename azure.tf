# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.34.0"
}

resource "random_password" "password" {
  length = 16
  special = true
  override_special = "_%@"
}

variable "prefix" {
  default = "hashicorp-example"
}
variable "username" {
  default = random_password.password
}