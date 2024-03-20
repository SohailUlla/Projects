##### S3 Permission to allow Owner Access only 

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowOwnerOnlyAccess",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::prod-testing-website-nothing.com/*",
                "arn:aws:s3:::prod-testing-website-nothing.com"
            ],
            "Condition": {
                "StringNotEquals": {
                    "aws:PrincipalArn": "arn:aws:iam::165718700648:root"
                }
            }
        }
    ]
}