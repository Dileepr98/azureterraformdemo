resource_group_name = "aks_terraform_nrg"
location            = "West Europe"
cluster_name        = "terraform-naks"
kubernetes_version  = "1.19.3"
system_node_count   = 2
node_resource_group = "aks_terraform_resources_nrg"
acr_name            = "demotf001nacr"