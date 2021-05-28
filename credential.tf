resource "random_password" "password" {
  length  = 30
  special = true

}

resource "aws_ssm_parameter" "foo" {
  name  = var.cluster_identifier
  type  = "SecureString"
  value = random_password.password.result
}
