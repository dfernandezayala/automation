#resource "azurerm_resource_group" "testrg" {
#    name     = "${var.resource_group_name}"
#    location = "${var.location}"
#}

resource "azurerm_storage_account" "testsa" {
  name                     = "${var.storage_account_name}"
  #resource_group_name      = "${azurerm_resource_group.testrg.name}"
  resource_group_name      = "${var.resource_group_name}"
  location                 = "${var.location}"
  account_tier             = "${var.account_tier}"
  account_replication_type = "${var.account_replication_type}"
  #Optional
  account_kind             = "${var.account_kind}"
  access_tier              = "${var.access_tier}"
  enable_https_traffic_only= "${var.enable_https_traffic_only}"

  tags = {
    environment = "${var.environment}"
  }
}
resource "null_resource" "azure-cli" {
  
  provisioner "local-exec" {
    # Call Azure CLI Script here
    command = "./postconf-storage.sh"

    # We are going to pass in terraform derived values to the script
    environment = {
      storageAccount = "${azurerm_storage_account.testsa.name}"
      environment = "${var.environment}"
    }
  }
  depends_on = ["azurerm_storage_account.testsa"]
}