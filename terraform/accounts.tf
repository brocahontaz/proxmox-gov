resource "proxmox_virtual_environment_user" "terraform_service_account" {
  comment = "Managed by Terraform"
  user_id = "terraform@pam"

  groups = [
    proxmox_virtual_environment_group.service_accounts.group_id
  ]
}
