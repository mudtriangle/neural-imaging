launch:
	docker build . -t neural-imaging:1.0
	docker rm -f neural-imaging || true
	docker run --cpus 4 --cpu-shares 1024 --name neural-imaging -p 8888:8888 -d -v $(PWD):/app:rw neural-imaging:1.0
	docker exec -it neural-imaging bash

