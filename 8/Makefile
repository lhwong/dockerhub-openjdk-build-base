# Example Makefile for docker builds
# See http://blog.dixo.net/2015/07/building-docker-containers-with-make-on-coreos/

#-----------------------------------------------------------------------------
# configuration - see also 'make help' for list of targets
#-----------------------------------------------------------------------------

# name of container
IMAGE_NAME = docker.adorsys.de/alpine/openjdk8-base

#-----------------------------------------------------------------------------
# default target
#-----------------------------------------------------------------------------

all   : ## Build the container - this is the default action
all: build

#-----------------------------------------------------------------------------
# build container
#-----------------------------------------------------------------------------

.built: . Dockerfile
	docker build -t $(IMAGE_NAME) .
	@docker inspect -f '{{.Id}}' $(IMAGE_NAME) > .built

build : ## build the container
build: .built


#-----------------------------------------------------------------------------
# repository control
#-----------------------------------------------------------------------------

push  : ## Push container to remote repository
push: build
	docker push $(IMAGE_NAME)

pull  : ## Pull container from remote repository - might speed up rebuilds
pull:
	docker pull $(IMAGE_NAME)

#-----------------------------------------------------------------------------
# supporting targets
#-----------------------------------------------------------------------------

help  : ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY : all buildpush pull help
