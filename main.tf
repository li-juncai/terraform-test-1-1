provider "alicloud" {
  region     = "cn-shanghai"
  access_key = var.alicloud_access_key
  secret_key = var.alicloud_secret_key
}

resource "alicloud_ram_role" "example" {
  name         = "ljc-test-role"
  services     = ["ecs.aliyuncs.com"]  
  description  = "HCP Terraform test user"
  force        = true  
}
