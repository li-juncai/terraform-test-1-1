terraform {
  required_providers {
     alicloud = {
       source  = "aliyun/alicloud"
       version = "~> 1.200"
     }
  }
  backend "remote" {  # 使用Terraform Cloud/Enterprise远程状态存储
     organization = "ljc-test-1"
     workspaces {
       name = "workspace-1-1"
     }
   }
}

provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "cn-shanghai"
}

resource "alicloud_ram_role" "example" {
  name        = "tf-test-role"
  description  = "Created by Terraform GitHub Actions"
  force       = true
}
