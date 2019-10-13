
build:
	docker build . -t local/dionaea-docker

run:
	docker run -d \
		-p 21:21 \
		-p 23:23 \
		-p 53:53 \
		-p 42:42 \
		-p 69:69/udp \
		-p 80:80 \
		-p 123:123 \
		-p 135:135 \
		-p 443:443 \
		-p 445:445 \
		-p 1443:1443 \
		-p 1723:1723 \
		-p 1883:1883 \
		-p 1900:1900/udp \
		-p 3306:3306 \
		-p 5060:5060 \
		-p 5060:5060/udp \
		-p 5061:5061 \
		-p 27017:27017 \
		-p 11211:11211 \
		--name dionaea-container --rm local/dionaea-docker

all: build run
