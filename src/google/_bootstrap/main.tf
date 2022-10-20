terraform {
}
provider "google" {
  #project = "{{YOUR GCP PROJECT}}"
  region = "us-central1"
  zone   = "us-central1-c"
}
module "bootstrap" {
  #source = "../../../templates/google/_bootstrap"
  source = "github.com/Radical-Dave/Auto/data/providers/tf/templates/google/_bootstrap"  
  name   = var.name
}