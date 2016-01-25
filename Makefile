NAME = jackwilsdon/hang
VERSION = 0.1.0

IMAGE_NAME=$(NAME):$(VERSION)
BUILD_IMAGE_NAME=$(NAME):build
BUILD_CONTAINER_NAME=$(subst /,_,$(NAME)_$(VERSION)_build)

.PHONY: build shell run default

build:
	make -C build

	docker create --name $(BUILD_CONTAINER_NAME) $(BUILD_IMAGE_NAME)
	docker cp $(BUILD_CONTAINER_NAME):/usr/bin/hang hang
	-docker rm -f $(BUILD_CONTAINER_NAME)
	docker build -t $(IMAGE_NAME) .
