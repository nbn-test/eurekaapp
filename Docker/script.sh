#!/bin/bash
scp -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa springBootMongo.yml ubuntu@18.237.3.85:/home/ubuntu/
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa ubuntu@18.237.3.85 "sudo docker login --password=admin123 --username=admin 40141c99.ngrok.io"
ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/id_rsa ubuntu@18.237.3.85 \"sudo kubectl apply -f /home/ubuntu/springBootMongo.yml\""
