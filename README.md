# terraform-aws-RDS_CLUSTER
## Please add below code 

```
module "aws_rds_cluster" {
     source = "Iuliia16/terraform-aws-RDS_CLUSTER"
region                  = "us-east-2"
cluster_identifier      = "aurora_cluster_demo"
engine                  = "aurora-mysql"
engine_version          = "5.7.mysql_aurora.2.07.2"
availability_zones      = ["us-east-2a", "us-east-2b", "us-east-2c"]
database_name           = "db"
master_username         = "foo"
backup_retention_period = 5
publicly_accessible     = true
preferred_backup_window = "07:00-09:00"
skip_final_snapshot     = true

subnet_ids = [
  "subnet-",
  "subnet-",
  "subnet-"
]
allowed_hosts = [
  "50.194.68.1/32",
  "127.0.0.1/32"
]
output "region" {
  value = var.region
}
output "subnet_list" {
  value = var.subnet_ids
}
output "allowed_hosts" {
  value = var.allowed_hosts
}
output "DB_NAME" {
  value = aws_rds_cluster.default.cluster_identifier
}
}
```