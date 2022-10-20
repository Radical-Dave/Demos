terraform {
}
provider "aws" {
  region = "us-east-1"
}
module "smoketest" {
  #source = "../../../templates/aws/_smoketest"
  source = "github.com/Radical-Dave/Auto/data/providers/tf/templates/aws/_smoketest"
  name   = var.name
}