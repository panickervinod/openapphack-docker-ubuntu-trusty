all: build

build:
	@docker build --tag=openapphack/ubuntu-trusty:latest .

release: build
	@docker build --tag=openapphack/ubuntu-trusty:$(shell cat VERSION) .
