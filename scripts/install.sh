#!/bin/bash
# chrome
function chrome() {
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
}

# browser install
# citrix
# sudo ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts # if SSL error 4

# snap install
function snap() {
	sudo snap install --classic \
		vlc \
		code
	}

# apt install
function apt() {
	sudo apt update && sudo apt upgrade -y && sudo apt install -y \
		vim \
		net-tools \
		openssh-server \
		python3 \
		python-is-python3 \
		python3-pip \
		fcitx-hangul \ # https://velog.io/@ddubbu/%EC%9A%B0%EB%B6%84%ED%88%AC-20.04-%ED%95%9C%EA%B8%80-%EC%9E%85%EB%A0%A5-%EB%B0%A9%EB%B2%95-feat.-fcitx
		git \
		tig \
		htop \
		tree \
		cifs-utils \
		nfs-common
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


function pip() {
	pip install \
		streamlit \
		--upgrade protobuf
	}
apt
snap
