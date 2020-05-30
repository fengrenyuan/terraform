provider "openstack" {
  user_name   = "admin"
  password    = "admin"
  tenant_id   = "5919a43c3aba4b1d8c3b2cde1af084e5"
  auth_url    = "http://172.16.236.107:5000"
  region      = "RegionOne"
  user_domain_name  = "Default"
  project_domain_id = "default"
}

resource "openstack_compute_instance_v2" "basic" {
  name            = "basic"
  image_id        = "7f85139c-336f-43b1-8b64-59e60434ffc4"
  flavor_id       = "1"
  security_groups = ["default"]

  metadata = {
    this = "that"
  }

  network {
    name = "prv-1"
  }
}
