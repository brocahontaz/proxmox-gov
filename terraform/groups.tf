resource "proxmox_virtual_environment_group" "service_accounts" {
  comment  = "Managed by Terraform"
  group_id = "service-accounts"

  acl {
    path      = "/vms"
    propagate = true
    role_id   = "PVEVMAdmin"
  }
}
