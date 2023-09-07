SHELL:=$(if $(windir),cmd.exe,/bin/sh)

DOCKER_CONTAINER:=tdesign-dev

NPM_MIRROR:=https://registry.npmmirror.com

tdesign_dev_v1:
	docker run -dit --name=$(DOCKER_CONTAINER) \
		-v $(CURDIR):/usr/murph -p 3002:3002 \
		-e SCHEDULER_TIMEZONE=Asia/Shanghai \
		node:18.17.0
	docker exec -it $(DOCKER_CONTAINER) apt update -y
	docker exec -it $(DOCKER_CONTAINER) apt upgrade  -y
	docker exec -it $(DOCKER_CONTAINER) apt install  -y xdg-utils
	docker exec -it $(DOCKER_CONTAINER) npm config set registry ${NPM_MIRROR}
	docker exec -it $(DOCKER_CONTAINER) npm install -g npm@latest pnpm
	docker exec -it --workdir /usr/murph $(DOCKER_CONTAINER) pnpm i
	docker exec -it --workdir /usr/murph $(DOCKER_CONTAINER) pnpm run dev