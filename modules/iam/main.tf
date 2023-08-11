resource "aws_iam_user" "s3_push" {
  name = var.user_name
}

resource "aws_iam_policy" "s3_policy" {
  name        = "s3-push-policy"
  description = "Policy to allow PutObject to specific S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = ["s3:PutObject"],
        Effect   = "Allow",
        Resource = "${var.bucket_arn}"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "s3_user_attachment" {
  user       = aws_iam_user.s3_push.name
  policy_arn = aws_iam_policy.s3_policy.arn
}
