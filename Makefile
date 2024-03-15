all:
	@sudo mkdir -p /home/bbird/data/db /home/bbird/data/website
	@docker-compose -f srcs/requirements/docker-compose.yml up --build -d

install :
	@sudo apt-get update 
	@sudo apt-get upgrade -y
	@sudo apt-get install -y curl gnupg ca-certificates lsb-release docker.io docker docker-compose
	@sudo mkdir -p /home/bbird/data/db /home/bbird/data/website

restart :
	@docker-compose -f ./srcs/requirements/docker-compose.yml stop
	@docker-compose -f ./srcs/requirements/docker-compose.yml start

down:
	@docker-compose -f ./srcs/requirements/docker-compose.yml down

clean:

	@docker-compose -f ./srcs/requirements/docker-compose.yml down
# @docker rm -f $$(docker ps -qa)
	@docker volume rm -f $$(docker volume ls)
	@sudo rm -rf ./data
	@docker system prune -a -f --volumes

.PHONY: all clean fclean re