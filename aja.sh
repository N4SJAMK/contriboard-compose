#!/bin/bash

# Default to N4SJAMK if no user is given.
USER=${1-N4SJAMK}

# Clone our repositories.
git clone git@github.com:$USER/teamboard-io.git           io
git clone git@github.com:$USER/teamboard-api.git          api
git clone git@github.com:$USER/teamboard-client-react.git client-react

docker-compose up
