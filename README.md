[![Build Status](https://travis-ci.com/philips-software/docker-images.svg?token=rJGEzBK71KGFbNJFk2Ws&branch=master)](https://travis-ci.com/philips-software/scala)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Scala Docker images

This repo will contain scala docker images

Current versions available:
```
.
├── 2.12
│   └── alpine
│       └── Dockerfile
```
## Usage

```
docker run -it --rm philipssoftware/scala:2.12 scala -version
```

## Simple Tags

### scala
- `scala:2.12`, `scala:2.12-alpine`, `scala:2.12-1.2.3`, `scala:2.12-1.2.3-alpine` [scala/2.12/alpine/Dockerfile](scala/2.12/alpine/Dockerfile)

## Why?

> Why do we have our own docker image definition?

We often need some tools in a container for checking some things. F.e. [jq](https://stedolan.github.io/jq/) and [curl](https://curl.haxx.se/).
We can install this every time we need a container, but having this baked into a container seems a better approach.

For Scala there is no official docker image available. Of course we could use `hseeberger/scala-sbt`, but we might want another linux version in our image for whatever reason.

That's why we want our own docker file definitions.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/docker-images/issues)

## Author

- Jeroen Knoops <jeroen.knoops@philips.com>
- Heijden, Remco van der <remco.van.der.heijden@philips.com>

## License

License is MIT. See [LICENSE file](LICENSE.md)

## Philips Forest

This module is part of the Philips Forest.

```
                                                     ___                   _
                                                    / __\__  _ __ ___  ___| |_
                                                   / _\/ _ \| '__/ _ \/ __| __|
                                                  / / | (_) | | |  __/\__ \ |_
                                                  \/   \___/|_|  \___||___/\__|  

                                                                 Infrastructure
```

Talk to the forestkeepers in the `docker-images`-channel on Slack.

[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)
