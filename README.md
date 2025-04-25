# AWS Basic Webserver

This Terraform project deploys a basic web server on AWS EC2.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 1.5.7 or later)
- Basic understanding of AWS services (EC2, VPC)

### AWS Configuration

1. Install AWS CLI:
   ```
   # For macOS (using Homebrew)
   brew install awscli

   # For Linux
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   unzip awscliv2.zip
   sudo ./aws/install
   ```

2. Configure AWS credentials using one of these methods:

   a. Using AWS CLI (Recommended for local development):
   ```
   aws configure
   ```
   You will be prompted to enter:
   - AWS Access Key ID
   - AWS Secret Access Key
   - Default region name (e.g., ap-south-1)
   - Default output format (json)

   b. Using Environment Variables:
   ```
   export AWS_ACCESS_KEY_ID="your_access_key"
   export AWS_SECRET_ACCESS_KEY="your_secret_key"
   export AWS_DEFAULT_REGION="ap-south-1"
   ```

   c. Using AWS credentials file:
   Create or edit ~/.aws/credentials:
   ```
   [default]
   aws_access_key_id = your_access_key
   aws_secret_access_key = your_secret_key
   ```

3. Verify AWS configuration:
   ```
   aws sts get-caller-identity
   ```

## Usage

1. Initialize Terraform:
   ```
   terraform init
   ```

2. Review the execution plan:
   ```
   terraform plan
   ```

3. Apply the configuration:
   ```
   terraform apply
   ```

4. To destroy the infrastructure:
   ```
   terraform destroy
   ```