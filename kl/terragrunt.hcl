generate "provider" {
    path = "providers.tf"
    if_exists = "overwrite"
    contents = <<EOF
terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.49.0"
    }
  }
}

provider "openstack" {
  insecure    = true
  user_name   = "admin"
  password    = "WQRv9Ax2G=wNmJ^s"
  tenant_name = "Admin"
  auth_url    = "https://10.151.255.35:5000/v3"
}
EOF
}

inputs = {
  key_pair_compute = {
      instance_name = "instance-dm",
      key_name      = "keyyyyy",
      public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtqsWySIAjQJEqXXuRt6oeOzC7OhU3N0FD+os+ppsozT2yvA8KmIqnsblF77lg5XRNsoqcw8Rz5thrEYn9VeKsot9d3hOG+6NvNfoQWXBS+aiksceTiE7FL0tPl4S46SARKBkI0+/tV3KWx9Ee34ZRFGjbSdhhbnhBq71Pdv5pw239pjlOpFL0hjxXQhzCgNl1ycCqvSEfl08XFKXR1r6IdAJtLq8LQ3A3Dui/jrvxEq0B2r8FCdTuSsp/qLX5aGgm6wVXxCSOtgw2i4/xSkRRYpja5Rn76/M1rJWcnTosqf3uwX9H8yb2NKlErzEEqRH7nBDFN9ogyfUOJEsexYIoAjGMyBgJ/VwnXNMm8zZVLXPySXR3GWstLWuJgzW0YKCZIckdO4Ug1DXOUIWsICHgvefbsiT+qPKfuUYtjkCi4kQ4FZUpQ2vSSv7ha7hNUK0F2HqtpTAhtNAAAl32R7FDMTbw7SRYHHpNM1XINB6dImBj1JO42+b3EeMBlF4eSY0= user@user-System-Product-Name",
      location      = ["openstack-my-kl"]
    }
}
