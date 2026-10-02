module "ec2_module" {
  source = "../../../modules/compute/ec2"

ami_id = var.ami_id
instance_type = var.instance_type
subnet_id = data.terraform_remote_state.vpc_backend.outputs.public_subnet_01_id
public_ip = var.public_ip
aws_region = var.aws_region
environment = var.environment
vpc_id = data.terraform_remote_state.vpc_backend.outputs.vpc_id
}