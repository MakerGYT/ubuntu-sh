echo -e "\n deb http://nginx.org/packages/ubuntu/ xenial nginx \n deb-src http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list
wget http://nginx.org/keys/nginx_signing.key 
sudo apt-key add nginx_signing.key
sudo apt-get update
sudo apt-get install nginx
# test
service nginx start
service nginx status
