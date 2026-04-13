# Run container
docker run -it --rm --cap-add=NET_ADMIN --name firewall-demo ubuntu bash

# Update packages
apt update

# Install tools
apt install -y iptables iproute2 iputils-ping net-tools curl
apt install -y nginx openssh-server

# Start services
service nginx start
service ssh start

# Get IP
hostname -I

# Apply firewall rules
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
iptables -A INPUT -j DROP

# Verify rules
iptables -L -n

# Test (run from host)
curl http://<container-ip>
ssh root@<container-ip>

# Cleanup
exit