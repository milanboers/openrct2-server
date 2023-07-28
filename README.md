# openrct2-server
Dockerfile for running an openrct2 multiplayer server in a container

[Docker Hub milanb/openrct2-server](https://hub.docker.com/r/milanb/openrct2-server/)

## Usage
```bash
$ docker run -d -p 11753:11753 -v /path/to/some.park:/park.park milanb/openrct2-server
```

## Troubleshoot

### "Can't open /park.park"
Make sure your park is world-readable: `chmod 644 /path/to/some.park`

