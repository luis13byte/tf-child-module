module "tf_base" {

  source = "git::https://URL-EXAMPLE-WITH-TOKEN/terraform-aws-ec2.git"
  # Cambio de rama: ?ref=BranchName

  # Instance settings
  instance_name   = var.instance_name_client
  instance_type   = var.instance_type_client
  sec_groups_list = var.sec_groups_list_client

  # AMI Settings
  ami_name        = "CentOS-7-20200923-2003.x86_64-*"
  ami_owner       = "679593333241"
  ami_description = "CentOS 7 with Updates HVM 20200923"

  # New path to script
  scripts_directory = var.scripts_directory_client

}
