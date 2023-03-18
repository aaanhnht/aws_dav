# README
This CloudFormation template creates two IAM roles and policies for accessing an S3 bucket: one with full access and one with read-only access.

# Resources
The following resources are defined:
- IAMS3FullAccessRole: an IAM role that grants full access to S3, with lambda.amazonaws.com as its trusted entity.
- IAMS3FullAccessPolicy: an IAM policy that allows the s3:* action on all S3 resources, with the IAMS3FullAccessRole as its associated role.
- S3Bucket: an S3 bucket with a name in the format my-s3-bucket-${AWS::AccountId}-${AWS::Region}.
- BucketReadOnlyPolicy: an S3 bucket policy that allows read-only access to the S3 bucket, with a wildcard principal and the s3:Get* and s3:List* actions.
- IAMS3ReadOnlyRole: an IAM role that grants read-only access to S3, with redshift.amazonaws.com as its trusted entity.
- IAMS3ReadOnlyPolicy: an IAM policy that allows the s3:Get* and s3:List* actions on the S3 bucket and all of its contents, with the IAMS3ReadOnlyRole as its associated role.