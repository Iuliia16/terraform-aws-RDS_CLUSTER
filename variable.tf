variable "region" {
  default = "us-east-2"
}
variable "cluster_identifier" {
  default = "aurora-cluster-demo"
}
variable "engine" {}
variable "engine_version" {}
variable "availability_zones" {}
variable "database_name" {}
variable "master_username" {}
variable "master_password" {}
variable "publicly_accessible" {}
variable "backup_retention_period" {}
variable "preferred_backup_window" {}
variable "skip_final_snapshot" {}

variable "subnet_ids" {
  type = list(any)
}
variable "allowed_hosts" {
  type = list(any)
}
