# adding repository and installing nginx		
apt update
apt install nginx -y
cat <<EOT > gtiapp
upstream gtiapp {

 server app01:8080;

}

server {

  listen 80;

location / {

  proxy_pass http://gtiapp;

}

}

EOT

mv gtiapp /etc/nginx/sites-available/gtiapp
rm -rf /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/gtiapp /etc/nginx/sites-enabled/gtiapp

#starting nginx service and firewall
systemctl start nginx
systemctl enable nginx
systemctl restart nginx
