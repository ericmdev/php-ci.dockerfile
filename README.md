## Dockerfile: Debian - PHP Continuous Inspection

[![Build Status](https://travis-ci.org/ericmdev/php-ci.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/php-ci.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) PHP continuous inspection software:

- sonarqube
- phpdocumentor
- phpcpd
- phploc
- phpmd
- pdepend
- php_codesniffer

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [sonarqube:5.1](https://hub.docker.com/_/sonarqube/)

*Docker Pull Command*
- `docker pull ericmdev/php-ci`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.