resource "aws_iam_role" "amplify_role" {
  name = "amplify_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "amplify.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_policy" "amplify_policy" {
  name   = "amplify_policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = [
        "s3:*",
        "cognito-idp:*",
        "dynamodb:*",
        "lambda:*",
        "cloudfront:*",
        "route53:*",
        "acm:*"
      ]
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "amplify_policy_attachment" {
  role       = aws_iam_role.amplify_role.name
  policy_arn = aws_iam_policy.amplify_policy.arn
}
