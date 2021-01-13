
# sudo docker network create net

# sudo docker-compose up -d

cd domain1

sudo docker build . -t nginx1

sudo docker run -dt --name domain1 -e VIRTUAL_HOST=domain1.com -e LETSENCRYPT_HOST="domain1.com" --network net nginx1:latest

cd ..

cd domain2

sudo docker build . -t nginx2

sudo docker run -dt --name domain2 -e VIRTUAL_HOST=domain2.com -e LETSENCRYPT_HOST="domain2.com" --network net nginx2:latest

cd ..