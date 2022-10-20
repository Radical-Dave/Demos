terraform {
}
provider "oci" {
  #project = "{{YOUR GCP PROJECT}}"
  region = "us-central1"
  #zone="us-central1-c"
}
module "bootstrap" {
  #source = "../../../templates/oci/_bootstrap"
  source = "github.com/Radical-Dave/Auto/data/providers/tf/templates/oci/_bootstrap"  
  name   = var.name
}