# Google Cloud Essential Skills: Challenge Lab 
# https://www.qwiklabs.com/focuses/1734?parent=catalog

# Task 1: Create a Compute Engine instance, add necessary firewall rules.
 - Navigation menu > Compute Engine > VM instances
 - Create VM with name "apache" and enable "allow http traffic"

# Task 2: Configure Apache2 Web Server in your instance
 - SSH into apache VM
 - *in ssh*
sudo apt-get update
sudo apt-get install apache2 -y

Copy the External IP of the instance to your web browser. You should see an Apache2 Debian Default Page if the web server is successfully installed.  

# Task 3: Test your server 
echo '<!doctype html><html><body><h1>Hello World!</h1></body></html>' | sudo tee /var/www/html/index.html

Refresh the webpage of External IP, & you’ll get “Hello World!”

