# ==============================================
# setup-web.ps1
# Author: Kerry Rocher
# Purpose: Configure an Ubuntu VM as a simple web server
# ==============================================

Write-Host "Starting web server setup..."

# Update package list
Write-Host "Updating system packages..."
sudo apt-get update -y

# Install NGINX
Write-Host "Installing NGINX web server..."
sudo apt-get install nginx -y

# Start and enable the NGINX service
Write-Host "Starting and enabling NGINX..."
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a simple web page
Write-Host "Creating index.html..."
echo "<h1>Welcome to CloudTopia - Deployed by Kerry's CI/CD Pipeline!</h1>" | sudo tee /var/www/html/index.html

# Allow HTTP traffic on port 80
Write-Host "Allowing port 80..."
sudo ufw allow 'Nginx HTTP'
sudo ufw reload

Write-Host "✅ Web server setup completed successfully!"
