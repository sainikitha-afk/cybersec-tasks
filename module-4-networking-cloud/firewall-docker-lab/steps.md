# Firewall Lab Steps

## Step 1: Run Docker Container

Started an Ubuntu container with network admin privileges to allow firewall configuration.

Command used:

docker run -it --rm --cap-add=NET_ADMIN --name firewall-demo ubuntu bash

---

## Step 2: Install Required Packages

Updated package list and installed required tools for networking and firewall configuration.

Commands:

apt update
apt install -y iptables iproute2 iputils-ping net-tools curl
apt install -y nginx openssh-server

---

## Step 3: Start Services

Started required services inside the container.

Commands:

service nginx start
service ssh start

---

## Step 4: Get Container IP

Retrieved the IP address of the container.

Command:

hostname -I

---

## Step 5: Apply Firewall Rules

Configured iptables to allow HTTP and HTTPS while blocking SSH.

Commands:

iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
iptables -A INPUT -j DROP

---

## Step 6: Verify Rules

Checked if firewall rules were correctly applied.

Command:

iptables -L -n

---

## Step 7: Test Connectivity

Tested access from host machine.

Commands:

curl http://<container-ip>
ssh root@<container-ip>

---

## Step 8: Cleanup

Exited container. It was automatically removed due to --rm flag.

Command:

exit