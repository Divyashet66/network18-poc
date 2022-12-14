sudo ufw allow ssh

  apt-get update

  apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

  add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

  apt-get update

  apt-get install -y docker-ce

  sudo groupadd docker
  sudo usermod -aG docker $USER
  sudo chmod 666 /var/run/docker.sock