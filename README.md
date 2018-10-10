[![Build Status](https://travis-ci.com/philips-software/docker-images.svg?token=rJGEzBK71KGFbNJFk2Ws&branch=master)](https://travis-ci.com/philips-software/scala)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images

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
