variable subscription_id {}
variable tenant_id {}
variable client_id {}
variable client_secret {}
variable resource_group_name {
    default = "TestResourceGroup"
}
variable location {
    default = "eastus"
}
variable "storage_account_name" {
  default = "rchteststorage"
}
variable "account_replication_type" {
  default = "LRS"
}
variable "account_tier" {
  default = "Standard"
}
variable "account_kind" {
  default = "StorageV2"
}
variable "access_tier" {
  default = "Hot"
}
variable "enable_https_traffic_only" {
  default = "true"
}
variable "environment" {
  default = "development"
}
