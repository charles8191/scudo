# scudo binary 

This is a simple project that builds scudo from Git every Monday and then uploads it, using the Rocky 9 container. There is also a container artifact if you'd like to build it yourself:

```bash
mkdir out
podman run -v "$(pwd)/out":/out ghcr.io/charles8191/scudo/artifact 
```

## Demo

```bash
wget https://github.com/charles8191/scudo/raw/refs/heads/main/libscudo.so
LD_PRELOAD=./libscudo.so /bin/echo "Hello, world!"
```
