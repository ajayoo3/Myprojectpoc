[A[B[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3;2~[3~
[A[3;2~[3;2~
resource "aws_iam_role" "lambda_execution_role" {
  name = "LambdaExecutionRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

[A