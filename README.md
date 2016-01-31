## Dockerfile: Debian - PHP QA Tools

[![Build Status](https://travis-ci.org/ericmdev/php-qa-tools.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/php-qa-tools.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) PHP QA tools:

- phpdocumentor
- phpcpd
- phploc
- phpmd
- pdepend
- php_codesniffer
- phpunit

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [ericmdev/php5](https://hub.docker.com/r/ericmdev/php5/)

*Docker Pull Command*
- `docker pull ericmdev/php-qa-tools`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.