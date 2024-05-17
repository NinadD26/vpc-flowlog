provider "aws" {
  region  = "us-east-1"
  profile = "SandoxTeamA"
}


module "vpc_flow_log" {
    source = "./modules/flowlog"
    traffic_type = var.traffic_type
    s3_bucket_name = var.s3_bucket_name
 
}
