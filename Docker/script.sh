#!/bin/bash
#docker login --password=admin123 --username=admin 40141c99.ngrok.io
scp -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa_amazonlinux springBootMongo.yml ec2-user@${ipaddress}:/home/ec2-user/
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa_amazonlinux ec2-user@${ipaddress} "docker login --password=admin123 --username=admin 40141c99.ngrok.io"
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa_amazonlinux ec2-user@${ipaddress} "touch test"
