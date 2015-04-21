# contriboard-compose
Contains scripts and configuration files for contriboard installation with
docker-compose

# HOWTO Ubuntu 14.04

Install docker
```
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker
```

Install pip if not already installed
```
sudo apt-get install python-pip
```

Install docker-compose
```
sudo pip install docker-compose
```

**Optional step** If you want improved auto complete for docker-compose run the
following command
```
sudo -c "curl -L https://raw.githubusercontent.com/docker/compose/1.2.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
```

Clone the contriboard-compose repository
```
git clone https://github.com/N4SJAMK/contriboard-compose.git
cd contriboard-compose
```

Run docker-compose. At the first time it takes a while to run the command
because docker pulls all necessary images and builds contriboard images.
```
# the -d parameter is not necessary but it puts the containers to the background
sudo docker-compose -d
```
