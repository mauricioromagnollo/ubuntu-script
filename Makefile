prepare:
	docker-compose up -d

open:
	docker exec -it ubuntu /bin/bash

down:
	docker-compose down
