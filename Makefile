NAME = verypossible/serverless
SERVERLESS_VERSION = 1.67.0

.PHONY:	all py3 shell


all : py3

py3 :
	docker build \
		-t $(NAME):$(SERVERLESS_VERSION) \
		-f Dockerfile \
		--build-arg SERVERLESS_VERSION=$(SERVERLESS_VERSION) \
		.

py3-shell :
	docker run --rm -it $(NAME):$(SERVERLESS_VERSION) bash
