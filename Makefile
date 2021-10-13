run:
	docker build -f Dockerfile  -t aws_manager .
	docker run --rm -it aws_manager

sync:
	aws s3 sync