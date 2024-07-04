resource "aws_amplify_app" "frontend" {
  name                = "frontend-app"
  repository          = "https://github.com/your-repo/frontend"
  oauth_token         = var.github_oauth_token
  access_token        = var.github_access_token
  iam_service_role_arn = var.iam_role_arn

  environment_variables = {
    ENV = "prod"
  }
}

resource "aws_amplify_branch" "master" {
  app_id      = aws_amplify_app.frontend.id
  branch_name = "master"
}