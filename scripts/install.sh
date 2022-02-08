#!/bin/bash
# Installed from web browser
# chrome
function chrome() {
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
}

# browser install
# citrix
# sudo ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts # if SSL error 4

# Installed from apt
function apt() {
  sudo apt update && sudo apt upgrade -y && sudo apt install -y \
  vim \
  net-tools \
  openssh-server \
  python3 \
  python-is-python3 \
  python3-pip \
  fcitx-hangul \
  git \
  tig \
  htop \
  tree \
  cifs-utils \
  nfs-common \
  cowsay \
  xcowsay \
  nfs-kernel-server \
  gcc-aarch64-linux-gnu \
  g++-aarch64-linux-gnu
}

# install docker
function docker() {
  sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containered.io 
  sudo usermod -aG docker $USER
}

# install gitlab runner
function gitlab() {
  curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
  sudo apt-get install gitlab-runner
}

gitlab

function pip() {
  pip install \
    streamlit \
    --upgrade protobuf
}
# pip()
