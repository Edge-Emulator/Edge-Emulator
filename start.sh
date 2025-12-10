export MY_VAR="value"

#install docker
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#install containerlab
curl -sL https://containerlab.dev/setup | sudo -E bash -s "all"

# wireshark
sudo apt install wireshark

# import ceos image
sudo docker pull zhen06199/ceos:4.28.0F
sudo docker tag zhen06199/ceos:4.28.0F ceos:4.28.0F
sudo docker rmi zhen06199/ceos:4.28.0F

# Import container with K3s cluster, KWOK and LIQO
sudo docker pull abdullahmuzlim279/k3s-serf-node:v1-cont
sudo docker tag testing954/clab-frr01-client27-with-cpu:latest cluster-node:latest
sudo docker rmi testing954/clab-frr01-client27-with-cpu:latest
