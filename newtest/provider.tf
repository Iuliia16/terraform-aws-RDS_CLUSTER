module "terraform-aws-rds-cluster" {
     source = "iuliia16/rds-cluster/aws"
region                  = "us-east-1"
cluster_identifier      = "aurora_cluster_demo"
engine                  = "aurora-mysql"
engine_version          = "5.7.mysql_aurora.2.07.2"
availability_zones      = ["us-east-2a", "us-east-2b", "us-east-2c"]
database_name           = "data"
master_username         = "foo"
backup_retention_period = 5
publicly_accessible     = true
preferred_backup_window = "07:00-09:00"
skip_final_snapshot     = true

subnet_ids = [
  "subnet-0d59141fcdaf43d07",
  "subnet-0dd6619bd8b2d3bb8",
  "subnet-011782d79237aedf5"
]
allowed_hosts = [
  "50.194.68.1/32",
  "127.0.0.1/32"
]
# output "region" {
#   value = var.region
# }
# output "subnet_list" {
#   value = var.subnet_ids
# }
# output "allowed_hosts" {
#   value = var.allowed_hosts
# }
# output "DB_NAME" {
#   value = aws_rds_cluster.default.cluster_identifier
# }
}