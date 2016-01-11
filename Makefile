all: build push

build:
	docker build -t ${DOCKER_USER}/ruby:2.3.0 .

push: build
	docker push ${DOCKER_USER}/ruby:2.3.0

test: build
	docker run -i ${DOCKER_USER}/ruby:2.3.0 /bin/bash -l -c 'ruby --version'
