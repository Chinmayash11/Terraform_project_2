sudo apt -y install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo rm /var/www/html/index.html
sudo git clone https://github.com/Chinmayash11/ecomm.git /var/www/html/
