all: build push

build:
	docker build -t ${DOCKER_USER}/ruby:ruby-2.3.0-xvfb .
push: build
	docker push ${DOCKER_USER}/ruby:ruby-2.3.0-xvfb 

test: build
	docker run -i ${DOCKER_USER}/ruby:ruby-2.3.0-xvfb /bin/bash -l -c 'ruby --version'
