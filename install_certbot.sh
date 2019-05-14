sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot python-certbot-nginx 
# sudo certbot --nginx -d test.makergyt.com
sudo certbot certonly -d *.test.makergyt.com --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory
