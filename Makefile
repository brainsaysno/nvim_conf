run:
	docker run -ti --rm nvconf 

build:
	docker build -t nvconf - < Dockerfile
