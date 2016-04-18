NAME=colszowka/toolkit
VERSION=latest

.PHONY: run build

run: build
	docker run -it --rm $(NAME):$(VERSION)

build:
	docker build -t $(NAME):$(VERSION) .