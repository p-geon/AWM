run:
	docker build -f Dockerfile  -t aws_manager .
	docker run --rm -it \
		-v `pwd`:/work \
		aws_manager

init:
	aws configure list

sync:
	aws s3 sync ./sync_data/ s3://datasets.research/