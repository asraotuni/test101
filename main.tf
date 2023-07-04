resource "aws_lambda_function" "myLambda01-aa1" {
  architectures = ["arm64"]
  function_name = "myLambda01"
  handler       = "lambda_function.lambda_handler"
  role          = "${data.aws_iam_role.myLambda01-role-eg2o85rn-db7.arn}"
  runtime       = "python3.8"
  tracing_config {
    mode = "PassThrough"
  }
}




data "aws_iam_role" "myLambda01-role-eg2o85rn-db7" {
  name = "myLambda01-role-eg2o85rn"
}

