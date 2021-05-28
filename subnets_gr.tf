resource "aws_db_subnet_group" "db" {
  name = "db"
  subnet_ids = [
    "subnet-0e3bd7b9dd92a4898",
    "subnet-0fde922f006f0dc1e",
    "subnet-0ec106794858746b4"
  ]
}