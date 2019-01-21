<div align="center" markdown="1">

[![O2System Framework](https://o2system.id/assets/img/logo/logo-200px.png?logo)](http://o2system.id)
</div>

<div align="center" markdown="1">

[![Build Status](https://travis-ci.org/o2system/docker.svg?branch=master)](https://travis-ci.org/o2system/docker)
[![License](https://img.shields.io/github/license/o2system/docker.svg)](https://img.shields.io/github/license/o2system/docker.svg)
[![Issues](https://img.shields.io/github/issues/o2system/docker.svg)](https://github.com/o2system/docker)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://o2system.id/docker/contributing)

</div>

## About

These Docker images are built on top of the official PHP Docker image, they contain additional PHP extensions required to run O2System framework, but no code of the framework itself.
The `Dockerfile`(s) of this repository are designed to build from different PHP-versions by using *build arguments*.

### Available versions for `o2system/docker`

```
7.2-apache, 7.1-apache, 7.0-apache, 5.6-apache
7.2-fpm, 7.1-fpm, 7.0-fpm, 5.6-fpm
```

## Setup

    cp .env-dist .env

Adjust the versions in `.env` if you want to build a specific version.

> **Note:** Please make sure to use a matching combination of `DOCKERFILE_FLAVOUR` and `PHP_BASE_IMAGE_VERSION`


## Building

    docker-compose build


### Xdebug

To enable Xdebug, set `PHP_ENABLE_XDEBUG=1` in .env file

Xdebug is configured to call ip `xdebug.remote_host` on `9005` port (not use standard port to avoid conflicts),
so you have to configure your IDE to receive connections from that ip.

If you are using macOS, you can fill `xdebug.remote_host` with `host.docker.internal`, due to a network limitation on mac (https://docs.docker.com/docker-for-mac/networking/#port-mapping)

    ### (macOS) configuration
    xdebug.remote_host=host.docker.internal


Awesome contributors:

<a href="http://o2system.id/contributing"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" alt="contributions welcome"></a>