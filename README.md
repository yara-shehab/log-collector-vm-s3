VM Logs to S3
This project is a bash script that copies log files from a specified EC2 instance to a temporary directory and then uploads them to an S3 bucket using the AWS CLI. The script is intended to be run on a local machine and requires that you have SSH access to the EC2 instance and that you have the AWS CLI installed and configured.

Prerequisites
Before running the script, you must have the following prerequisites:

SSH access to the EC2 instance that you want to copy logs from
You will need to create an SSH key pair and reference the path to the private key file in your Terraform code. You can create an SSH key pair using the ssh-keygen command on a Linux or macOS system, or using a tool like PuTTY on Windows.


The AWS CLI installed and configured on your local machine
Usage
To use the script, follow these steps:

Clone the repository to your local machine.
Open the get_logs.sh file in a text editor and modify the following variables to match your environment:
INSTANCE_ID: The ID of the EC2 instance that you want to copy logs from.
BUCKET_NAME: The name of the S3 bucket that you want to upload logs to.
COMMAND: The command that you want to run on the EC2 instance to copy logs to the home directory for the ec2-user.
INSTANCE_DNS: The public DNS name or IP address of the EC2 instance that you want to copy logs from.
Save the changes to the get_logs.sh file.
Open a terminal window and navigate to the directory where the repository was cloned.
Run the get_logs.sh script using the following command:
bash
Copy code
./get_logs.sh
The script will copy the logs from the EC2 instance to a temporary directory and upload them to the specified S3 bucket. The uploaded files will have a prefix of the current date and time.


# VM Log Collector

This project is a bash script that copies log files from a specified EC2 instance to a temporary directory and then uploads them to an S3 bucket using the AWS CLI. The script is intended to be run on a local machine and requires that you have SSH access to the EC2 instance and that you have the AWS CLI installed and configured.

## Getting Started

### Prerequisites

To use this project, you will need:

* An AWS account
* The AWS CLI installed on your local machine
* A key pair for SSH access to the EC2 instance (if using the Terraform code) You will need to create an SSH key pair and reference the path to the private key file in your Terraform code. You can create an SSH key pair using the ssh-keygen command on a Linux or macOS system, or using a tool like PuTTY on Windows.

* (Optional) Terraform installed on your local machine (if using the Terraform code)

### Installation

1. Clone this repository to your local machine:
2. Open the get_logs.sh file in a text editor and modify the following variables to match your environment:

INSTANCE_ID: The ID of the EC2 instance that you want to copy logs from.
BUCKET_NAME: The name of the S3 bucket that you want to upload logs to.
COMMAND: The command that you want to run on the EC2 instance to copy logs to the home directory for the ec2-user.
INSTANCE_DNS: The public DNS name or IP address of the EC2 instance that you want to copy logs from.
Save the changes to the get_logs.sh file.

Open a terminal window and navigate to the directory where the repository was cloned.
Run the get_logs.sh script using the following commands:

chmod +x get_logs.sh
./get_logs.sh
The script will copy the logs from the EC2 instance to a temporary directory and upload them to the specified S3 bucket. The uploaded files will have a prefix of the current date and time.


