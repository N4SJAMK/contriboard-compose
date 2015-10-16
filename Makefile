# Default user is N4SJAMK
# If you want to clone your own fork, just pass your github
# username as the USER variable
USER=N4SJAMK

# By default the repositories are cloned over ssh. If you
# want to clone with http, define the HTTP variable 
ifdef SSH
	REPO_URL="git@github.com:$(USER)"
else
	REPO_URL="https://github.com/$(USER)"
endif

all: pull

# Clones all the repositories
clone: api io img client-react

api: 
	git clone $(REPO_URL)/teamboard-api.git api

io:
	git clone $(REPO_URL)/teamboard-io.git io

client-react:
	git clone $(REPO_URL)/teamboard-client-react.git client-react

img:
	git clone $(REPO_URL)/teamboard-img img


# Executes `git pull` in each of the repositories
pull: api_pull io_pull img_pull client-react_pull

api_pull: api
	cd api; git pull; cd -

io_pull: io
	cd io; git pull; cd -

client-react_pull: client-react
	cd client-react; git pull; cd -

img_pull: img
	cd img; git pull; cd -

clean:
	rm -rf api img client-react io
