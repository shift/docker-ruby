all: build push

build:
	docker build -t ${DOCKER_USER}/ruby:2.2.2 .

push: build
	docker push ${DOCKER_USER}/ruby:2.2.2

test: build
	docker run -i ${DOCKER_USER}/ruby:2.2.2 /bin/bash -l -c 'ruby --version'
