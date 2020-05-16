module "vpc" {
  source          = "git::https://chandralekha882:Opcqa123!@github.com/chandralek/modules.git//elasticCache"
  PUBLIC_SUBNETS  = data.terraform_remote_state.VPC.outputs.PUBLIC_SUBNETS
  PRIVATE_SUBNETS = data.terraform_remote_state.VPC.outputs.PRIVATE_SUBNETS
  VPC_ID          = data.terraform_remote_state.VPC.outputs.VPC_ID
  TAGS            = var.TAGS
  NODE_TYPE       = var.NODE_TYPE
  NUMBER_OF_NODES = var.NUMBER_OF_NODES
  HOSTED_ZONE_ID  = data.terraform_remote_state.route53.outputs.HOSTED_ZONE_ID
  HOSTED_ZONE_NAME= data.terraform_remote_state.route53.outputs.HOSTED_ZONE_NAME
}