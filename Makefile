run:
	docker build -f Dockerfile  -t aws_manager .
	docker run --rm -it \
		-v `pwd`:/work \
		aws_manager

sync: # set AWS -> sync data
	aws configure
	aws s3 sync ./sync_data/ s3://datasets.research/