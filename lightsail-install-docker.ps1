ssh -i "LightsailDefaultKey-REGION.pem" ubuntu@ip.ip.ip.ip

lsb_release -a
echo $USER

sudo apt update
sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker

docker --version