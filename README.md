## Description

Here, In this template, we will manage permissions for the library of the Azure DevOps (ADO) using the terraform module. 

---

#### Pre-requisite

* AZ Account
* Azure CLI
* Azure DevOps login

---

### Steps:-
1. Login into AZ account using `az login` or `az login --tenant <TENANT-ID>`
2. Login into the Azure DevOps using `az devops login` and use your Personal Access Token (PAT)
3. You can also check your ADO Details using `az devops project list`


---
 
## Configuration

The following table lists the configurable parameters for the module with their default values.

| Parameters                         | Description                                        | Default | Type   | Required |
|------------------------------------|----------------------------------------------------|---------|--------|----------|
| adotoken_VV                        | Personal Access Token                              |         | string | Yes      |  
| organization_service_url_VV        | Organisation Service URL                           |         | string | Yes      |  
| project_name_VV                    | Name of Project                                    |         | string | Yes      |
| project_group_role_VV              | Name of Project Group Role                         |         | string | Yes      |


---