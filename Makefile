# Build the image.
.PHONY: build
build:
	docker build -t php-ci-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop php-ci-container
	docker rm php-ci-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm php-ci-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the interactive container.
.PHONY: run
run:
	docker run -d --name php-ci-container -p 9000:9000 -p 9092:9092 php-ci-image

# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it php-ci-container bash