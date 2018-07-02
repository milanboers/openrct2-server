# openrct2-server
Dockerfile for running an openrct2 multiplayer server in a container

[Docker Hub milanb/openrct2-server](https://hub.docker.com/r/milanb/openrct2-server/)

## Usage
```bash
$ docker run -d -p 11753:11753 -v /path/to/park.sc6:/opt/OpenRCT2/park.sc6 milanb/openrct2-server
```
