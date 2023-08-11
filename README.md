This is an example of creating an s3 bucket using terraform and creating an iam user with putObject permission on that s3 bucket.

1\. Profile Settings
```
% aws configure --profile terraform
AWS Access Key ID : Your Access Key ID
AWS Secret Access Key : Your Secret Access Key
Default region name : ap-northeast-1
Default output format : json 
```

2\. initialization
```
% terraform init
```

3\. Confirmation of Impact
```
% terraform plan
```

4.\ Resource Creation
```
% terraform apply
```
