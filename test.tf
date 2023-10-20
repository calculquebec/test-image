
terraform {
  required_version = ">= 1.4.0"
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = ">= 1.50.0"
    }
  }
}


data "openstack_images_image_v2" "image" {
  name_regex  = "^snapshot-nodepoolcpu$"
  most_recent = true
}
