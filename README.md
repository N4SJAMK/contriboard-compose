# contriboard-compose
Contains scripts and configuration files for contriboard installation with
docker-compose

# HOWTO Ubuntu 14.04

Install docker
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install -y lxc-docker
```

Install pip if not already installed
```
sudo easy_install -U pip
# Install python-setuptools if you do not have easy_install installed
```

Install docker-compose
```
sudo pip install docker-compose
```

**Optional step** If you want improved auto complete for docker-compose run the
following command
```
sudo apt-get install curl
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/1.2.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
```

Clone the contriboard-compose repository
```
git clone https://github.com/N4SJAMK/contriboard-compose.git
cd contriboard-compose
./initialize
```

Run docker-compose. At the first time it takes a while to run the command
because docker pulls all the necessary images and builds the contriboard images.
```
# the -d parameter is not necessary but it puts the containers to the background
sudo docker-compose up -d
```

If the docker-compose complains something about `requests` package version run
the following command
```
sudo pip install requests==2.5.2
```

Because all the containers are started at the same time the mongo service might
not be up at the time when api is trying to connect to it. This results in that
api container crashes and does not stay up. If this happens you have to run
`sudo docker-compose start` when mongo container is running. This is something
that should be fixed in the future.

important commands:
```
# show help
docker-compose --help

# show containers
sudo docker-compose ps

# create and start containers
sudo docker-compose up -d

# show logs from containers
sudo docker-compose logs
```
