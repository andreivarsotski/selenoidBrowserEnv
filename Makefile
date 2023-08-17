SHELL:=/bin/bash


start_env:
	docker network create selenoid_network
	cd local_env; docker-compose up -d --build

stop_env:
	( \
	set +e; \
	docker-compose -f local_env/docker-compose.yml down; \
	set -e; \
	)

clean_env:
	( \
	set +e; \
	docker container prune -f; \
	docker volume prune -f; \
	docker volume ls -qf dangling=true | xargs -r docker volume rm; \
	docker network prune -f; \
	set -e; \
	)

relaunch_env: stop_env clean_env start_env