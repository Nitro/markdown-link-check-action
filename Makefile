SHELL := /bin/bash
DOCKER_IMAGE := gonitro/markdown-link-check-action:1

.PHONY: docker-build
docker-build:
	@docker build -t $(DOCKER_IMAGE) -f Dockerfile .

.PHONY: docker-push
docker-push:
	@docker push $(DOCKER_IMAGE)
