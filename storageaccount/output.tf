output "storage_account_name" {
  value = "${azurerm_storage_account.testsa.name}"
}
output "storage_account_location" {
  value = "${azurerm_storage_account.testsa.location}"
}