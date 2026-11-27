#!/bin/bash
# Серверде орындалады: bash deploy.sh
set -e
sudo apt update
sudo apt install -y nginx
sudo ufw allow OpenSSH
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw --force enable
sudo mkdir -p /var/www/example
sudo cp /tmp/index.html /tmp/style.css /tmp/script.js /var/www/example/
sudo cp nginx-example.conf /etc/nginx/sites-available/example
sudo ln -sf /etc/nginx/sites-available/example /etc/nginx/sites-enabled/example
sudo nginx -t
sudo systemctl reload nginx
echo "Дайын! http://$(hostname -I | awk '{print $1}')"
