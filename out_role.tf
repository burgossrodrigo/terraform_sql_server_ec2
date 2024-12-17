# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "s3-sql-server"
resource "aws_iam_role" "s3-sql-server" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "s3.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows S3 to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "s3-sql-server"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}
