#
# Especificando detalles del proveedor

provider "aws" {
  region                  = module.tf_base.show_aws_region_az
  shared_credentials_file = "./.aws/credentials"
  max_retries             = "1"
}
