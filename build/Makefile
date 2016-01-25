NAME = jackwilsdon/hang

.PHONY: build shell run default

build:
	docker build -t $(NAME):build .

shell:
	docker run --rm -it $(NAME):build /sbin/my_init -- /bin/bash -l

run:
	docker run --rm $(NAME):build
