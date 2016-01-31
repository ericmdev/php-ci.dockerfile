# Build the image.
.PHONY: build
build:
	docker build -t php-qa-tools-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop php-qa-tools-container
	docker rm php-qa-tools-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm php-qa-tools-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the container.
.PHONY: run
run:
	docker run -d --name php-qa-tools-container php-qa-tools-image

# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it php-qa-tools-container bash