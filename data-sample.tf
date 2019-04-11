


# data 
# this depend on existing resource, it will fail unless create before


# data "aws_s3_bucket" "my_already_bucket" {
#   bucket="yishai-already-bucket"
# }



# resource "aws_iam_policy" "my_already_bucket_policy" {
#   name = "my-already-bucket-policy"

#   policy = <<POLICY
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": [
#         "s3:ListBucket"
#       ],
#       "Effect": "Allow",
#       "Resource": [
#         "${data.aws_s3_bucket.my_already_bucket.arn}"
#       ]
#     }
#   ]
# }
# POLICY
# }

# resource "aws_s3_bucket" "my_bucket" {
#   bucket="yishai-first-bucket"
# }


# output "my_value" {
#   value = "${aws_s3_bucket.my_bucket.arn}"
# }


