#!/bin/bash
scp -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa springBootMongo.yml ubuntu@IPADDRESS:/home/ubuntu/
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa ubuntu@IPADDRESS "sudo docker login --password=admin123 --username=admin 40141c99.ngrok.io"
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa ubuntu@IPADDRESS \"sudo kubectl apply -f /home/ubuntu/springBootMongo.yml\""
