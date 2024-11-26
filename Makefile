build-all:
	docker-compose -f "docker-compose.yaml" up -d --build

build-all-gpu:
	docker-compose -f "docker-compose-gpu.yaml" up -d --build

restart-docker:
	docker-compose -f "docker-compose.yaml" up -d --build

build-nginx:
	docker-compose -f "docker-compose.yaml" up -d --build nginx
	docker restart nginx-fd

.DEFAULT_GOAL := build-all