### Docker ###
docker_build:
	docker build -t my-comics-vue --no-cache --build-arg USER_ID=$(shell id -u) .

docker_run:
	docker run -p 8080:8080 -d --name=my-comics-vue --rm -v $(shell pwd)/:/app my-comics-vue -c "npm run serve"

docker_stop:
	docker stop my-comics-vue

docker_shell:
	docker exec -it my-comics-vue sh

docker_run_cmd:
	docker run --rm -v $(shell pwd)/:/app my-comics-vue -c "${CMD}"

### Npm ###
npm_install:
	make docker_run_cmd CMD="npm install"

### Vue ###
#vue_ui:
#	docker exec -it my-comics-vue sh -c "vue ui --headless --port 8000 --host 0.0.0.0"