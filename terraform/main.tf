provider "aws" {
#  access_key = "AKIAVKHDBVMQRBA5PJFK"
#  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_dynamodb_table" "my_first_table" {
  name        = "${var.table_name}"
  billing_mode = "${var.table_billing_mode}"
  hash_key       = "employee-id"
  attribute {
    name = "employee-id"
    type = "S"
  }
  tags = {
    environment       = "${var.environment}"
  }
}