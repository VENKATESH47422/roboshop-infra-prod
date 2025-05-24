# #!/bin/bash
# component=$1
# environment=$2 #dont use env here, it is reserved in linux
# yum install python3.11-devel python3.11-pip -y
# pip3.11 install ansible botocore boto3
# ansible-pull -U https://github.com/VENKATESH47422/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml



#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
#yum install python3.11-devel python3.11-pip -y
yum install -y ansible python3-dnf
pip3 install ansible botocore boto3
ansible-pull -U https://github.com/VENKATESH47422/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml