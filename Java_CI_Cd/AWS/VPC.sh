##### Git bash command to upload pem to baston-host using public ip 


chmod 400 ~/Downloads/aws_nv_10a.pem

scp -i ~/Downloads/aws_nv_10a.pem ~/Downloads/aws_nv_10a.pem ubuntu@52.23.203.23:/home/ubuntu/

##### Connecting baston host  to private subnets

chmod 400 aws_nv_10a.pem

ssh -i aws_nv_10a.pem ubuntu@10.0.134.181
