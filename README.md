[![Build Status](https://github.com/philips-software/docker-scala/workflows/build/badge.svg)](https://github.com/philips-software/docker-scala/actions/)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Scala Docker images

This repo will contain scala docker images

Current versions available:
```
.
├── 2
│   └── alpine
│       └── Dockerfile
```
## Usage

Images can be found on [https://hub.docker.com/r/philipssoftware/scala/](https://hub.docker.com/r/philipssoftware/scala/).
```
$ docker run -it --rm philipssoftware/scala:2 scala -version
Scala code runner version 2.13.0 -- Copyright 2002-2019, LAMP/EPFL and Lightbend, Inc.
```
## Content

The images obviously contain scala, but also two other files:
- `REPO`
- `TAGS`

### REPO

This file has a url to the REPO with specific commit-sha of the build.
Example:

```
$ docker run philipssoftware/scala:2 cat REPO
https://github.com/philips-software/docker-scala/tree/facb2271e5a563e5d6f65ca3f475cefac37b8b6c
```

### TAGS

This contains all the similar tags at the point of creation.

```
$ docker run philipssoftware/scala:2 cat TAGS
scala scala:2 scala:2.13 scala:2.13.0 scala:2.13.0-alpine scala:2.13-1.2.8 scala:2.13.0-1.2.8-alpine
```

You can use this to pin down a version of the container from an existing development build for production. When using `scala:2` for development. This ensures that you've got all security updates in your build. If you want to pin the version of your image down for production, you can use this file inside of the container to look for the most specific tag, the last one.

## Simple Tags

### scala
- `scala`, `scala:2`, `scala:2.13`, `scala:2.13.0`, `scala:2.13.0-alpine`, `scala:2.13-1.2.8`, `scala:2.13.0-1.2.8-alpine` [2/alpine/Dockerfile](2/alpine/Dockerfile)

## Why?

> Why do we have our own docker image definitions?

We often need some tools in a container for checking some things. F.e. [jq](https://stedolan.github.io/jq/) and [curl](https://curl.haxx.se/).
We can install this every time we need a container, but having this baked into a container seems a better approach.

For Scala there is no official docker image available. Of course we could use `hseeberger/scala-sbt`, but we might want another linux version in our image for whatever reason.

That's why we want our own docker file definitions.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/docker-scala/issues)

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
