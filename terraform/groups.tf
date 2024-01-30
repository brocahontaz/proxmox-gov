resource "proxmox_virtual_environment_group" "service_accounts" {
  comment  = "Managed by Terraform"
  group_id = "service-accounts"

  acl {
    path      = "/vms"
    propagate = true
    role_id   = "PVEVMAdmin"
  }

  acl {
    path      = "/storage"
    propagate = true
    role_id   = "PVEDatastoreAdmin"
  }

  acl {
    path      = "/sdn/zones/localnetwork"
    propagate = true
    role_id   = "PVESDNAdmin"
  }

  acl {
    path      = "/mapping/usb"
    propagate = true
    role_id   = "PVEMappingAdmin"
  }
}
