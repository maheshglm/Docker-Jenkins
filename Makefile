build:
	@docker-compose -p jenkins build

run:
	@docker-compose -p jenkins up -d nginx master proxy

stop:
	@docker-compose -p jenkins down

clean-images:
	@docker rmi `docker images -q -f "dangling=true"`
