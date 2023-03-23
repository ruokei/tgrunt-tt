terraform {
    # source = "git@github.com:ruokei/tform-tt.git?ref=tgrunt"
    source = "git@github.com:ruokei/tform-tt.git//galaxyproject"
}

inputs = {
  key_pair_compute = [{
      instance_name = "instance-dm",
      key_name      = "keyyyyy",
      public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtqsWySIAjQJEqXXuRt6oeOzC7OhU3N0FD+os+ppsozT2yvA8KmIqnsblF77lg5XRNsoqcw8Rz5thrEYn9VeKsot9d3hOG+6NvNfoQWXBS+aiksceTiE7FL0tPl4S46SARKBkI0+/tV3KWx9Ee34ZRFGjbSdhhbnhBq71Pdv5pw239pjlOpFL0hjxXQhzCgNl1ycCqvSEfl08XFKXR1r6IdAJtLq8LQ3A3Dui/jrvxEq0B2r8FCdTuSsp/qLX5aGgm6wVXxCSOtgw2i4/xSkRRYpja5Rn76/M1rJWcnTosqf3uwX9H8yb2NKlErzEEqRH7nBDFN9ogyfUOJEsexYIoAjGMyBgJ/VwnXNMm8zZVLXPySXR3GWstLWuJgzW0YKCZIckdO4Ug1DXOUIWsICHgvefbsiT+qPKfuUYtjkCi4kQ4FZUpQ2vSSv7ha7hNUK0F2HqtpTAhtNAAAl32R7FDMTbw7SRYHHpNM1XINB6dImBj1JO42+b3EeMBlF4eSY0= user@user-System-Product-Name",
      location      = ["openstack-my-ttdi"]
    }]
}
