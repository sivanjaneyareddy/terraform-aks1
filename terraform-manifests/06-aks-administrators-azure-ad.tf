# Create Azure AD Group in Active Directory for AKS Admins
resource "azuread_group" "aks_administrators" {
  #name        = "${azurerm_resource_group.aks_rg.name}-administrators"
  display_name        = "${var.resource_group_name}-administrators"
  owners           = [azuread_user.group_owner.rohit.shavili@yash.com,]
  description = "Azure AKS Kubernetes administrators for the cluster."
  security_enabled = true
}
