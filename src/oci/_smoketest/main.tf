terraform {
}
provider "oci" {
  #auth                = var.AUTH
  #config_file_profile = var.CONFIG_FILE_PROFILE
  region           = var.REGION
  tenancy_ocid     = var.TENANCY_OCID
  user_ocid        = var.USER_OCID
  fingerprint      = var.FINGERPRINT
  private_key_path = var.PRIVATE_KEY_PATH
}
module "smoketest" {
  #source       = "../../../templates/oci/_smoketest"
  source = "github.com/Radical-Dave/Auto/data/providers/tf/templates/oci/_smoketest"  
  name         = var.NAME
  tenancy_ocid = var.TENANCY_OCID
}
