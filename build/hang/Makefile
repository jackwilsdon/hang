NAME = jackwilsdon/hang
VERSION = 0.1.0

.PHONY: build shell run default

hang: hang.asm
	nasm -o $@ $<

build: hang

install:
	install hang /usr/bin
