resource "azuredevops_project" "project" {
  name               = var.project_name_VV
  description        = "Testing-description"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
}

data "azuredevops_group" "project-readers" {
  project_id = azuredevops_project.project.id
  name       = var.project_group_role_VV
}

resource "azuredevops_library_permissions" "permissions" {
  project_id = azuredevops_project.project.id
  principal  = data.azuredevops_group.tf-project-readers.id
  permissions = {
    "View" : "allow",
    "Administer" : "allow",
    "Use" : "allow",
  }
}