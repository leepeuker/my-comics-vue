### Docker ###
docker_build:
	docker build -t my-comics-vue --no-cache --build-arg USER_ID=$(shell id -u) .

docker_run:
	docker run -p 8080:8080 --rm -v $(shell pwd)/:/app my-comics-vue -c "npm run serve"

docker_stop:
	docker stop my-comics-vue

docker_shell:
	docker run -it --rm -v $(shell pwd)/:/app my-comics-vue

docker_run_cmd:
	docker run --rm -v $(shell pwd)/:/app my-comics-vue -c "${CMD}"

### Npm ###
npm_install:
	make docker_run_cmd CMD="npm install"