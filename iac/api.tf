data "aws_ecr_authorization_token" "token" {}

resource "aws_ecr_repository" "lambda1" {
  name = "lambda1-repo"
}

resource "aws_ecr_repository" "lambda2" {
  name = "lambda2-repo"
}

resource "docker_image" "lambda1" {
  name = "${aws_ecr_repository.lambda1.repository_url}:latest"
  build {
    context = "../src/lambdas"
    dockerfile = "Dockerfile1"
  }
}

resource "docker_image" "lambda2" {
  name = "${aws_ecr_repository.lambda2.repository_url}:latest"
  build {
    context = "../src/lambdas"
    dockerfile = "Dockerfile2"
  }
}

resource "docker_registry_image" "lambda1" {
  name = docker_image.lambda1.name
}

resource "docker_registry_image" "lambda2" {
  name = docker_image.lambda2.name
}                     

resource "aws_iam_role" "lambda_role" {
  name = "lambda_execution_role"

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

resource "aws_iam_role_policy_attachment" "lambda_basic" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "lambda1" {
  function_name = "lambda1-function"
  role          = aws_iam_role.lambda_role.arn
  package_type  = "Image"
  image_uri     = docker_registry_image.lambda1.name

  architectures = ["x86_64"]
}

resource "aws_lambda_function" "lambda2" {
  function_name = "lambda2-function"
  role          = aws_iam_role.lambda_role.arn
  package_type  = "Image"
  image_uri     = docker_registry_image.lambda2.name

  architectures = ["x86_64"]
}

resource "docker_container" "api" {
  name  = "api01-${terraform.workspace}"
  image = "lab/api"

  ports  {
        internal = 8080
        external = var.api_port[terraform.workspace]
    }
}

resource "docker_container" "web" {
  name  = "web01-${terraform.workspace}"
  image = "lab/web"

  ports  {
        internal = 80
        external = var.web_port[terraform.workspace]
    }
}