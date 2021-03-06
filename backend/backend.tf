provider "google" {
  credentials   = "${file("${var.cpath}")}"
  project       = "${var.project}"
  region        = "us-east1-b"
}


terraform {
  backend "gcs" {
    bucket  = "fuchicorp_bucket"
    prefix    = "webplatform-fuchicorp-deploy_dev/terraform.tfstate"       #A path to the data you want to upload
   #prefix   =  "common-tools/"${var.google_k8s_service}"/terraform.tfstate"
    
    project = "inspired-muse-225500"
  }
}

#resource "google_storage_bucket_acl" "fuchicorp_bucket-acl" {
#  bucket = "${google_storage_bucket.fuchicorp_bucket.name}"
#  }
