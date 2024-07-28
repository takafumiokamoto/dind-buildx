# dind-buildx

docker in docker with buildx for building multi-platform image

after running the image, commands are should be like this

```bash
dokcer login
docker context create buildx-build
docker buildx create --use buildx-build
docker buildx build --platform linux/arm64,linux/x86_64 --push .
```

docker hub
<https://hub.docker.com/r/okamototakafumi/dind-buildx/tags>