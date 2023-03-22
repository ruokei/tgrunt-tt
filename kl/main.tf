variable "key_pair_compute" {
  description = "Key Pair and Instance List"
  type = object({
    instance_name = string
    key_name      = string
    public_key    = string
    location      = list(string)
  })
}

resource "openstack_compute_keypair_v2" "my-cloud-key" {
  name       = var.key_pair_compute.key_name
  public_key = var.key_pair_compute.public_key
}

resource "openstack_compute_instance_v2" "my-instance" {
  name            = var.key_pair_compute.instance_name
  image_name      = "CentOS-7-x86_64-GenericCloud-2111"
  flavor_name     = "medium"
  key_pair        = var.key_pair_compute.key_name
  security_groups = ["default"]

  network {
    name = "server_vlan"
  }
}
