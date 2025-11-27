provider "alicloud" {
  region = "cn-shanghai"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "alicloud_ram_role" "test_role" {
  name        = "tf-test-role"
  description = "Created by Terraform without permissions"
  force       = true
}
