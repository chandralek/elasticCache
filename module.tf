module "vpc" {
  source      = "git::https://chandralekha882:Opcqa123!@github.com/chandralek/modules.git//elasticCache"
  PUBLIC_SUBNETS  = data.terraform_remote_state.VPC.outputs.PUBLIC_SUBNETS
  PRIVATE_SUBNETS = data.terraform_remote_state.VPC.outputs.PRIVATE_SUBNETS
  VPC_ID          = data.terraform_remote_state.VPC.outputs.VPC_ID
  TAGS            = var.TAGS
}