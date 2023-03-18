# README
This CloudFormation template creates an Amazon Elastic Compute Cloud (EC2) instance running Amazon Linux 2. It also creates a security group that allows SSH and web access to the instance.

## Parameters
The following parameters are defined:
- LatestAmiId: Latest Amazon Machine Image (AMI) ID for Amazon Linux 2.
- KeyName: Name of an existing EC2 Key Pair to use for SSH access to the instance.
- IpRange: IP range for SSH and web access. The default value is 0.0.0.0/0.

## Resources
The following resources are defined:
- EC2Instance: An EC2 instance with the specified instance type, key pair name, and security group.
- InstanceSecurityGroup: A security group that allows inbound traffic on port 22 for SSH and port 80 for web access.

## Outputs
The following outputs are provided:
- InstanceId: The ID of the created EC2 instance.
- AZ: The Availability Zone of the created EC2 instance.
- PublicDNS: The public DNS name of the created EC2 instance.
- PublicIP: The public IP address of the created EC2 instance.

## Usage
You can use this CloudFormation template to launch an EC2 instance with the specified configuration. You can customize the parameters to meet your specific requirements.

To launch this CloudFormation stack, you can use the AWS Management Console, AWS CLI, or any other tool that supports AWS CloudFormation. Please note that you will need to have an AWS account and the necessary permissions to create EC2 instances and security groups.

After the stack is created, you can SSH into the instance using the specified key pair and IP address range. You can also access the instance's web server by navigating to its public DNS name or IP address in a web browser.