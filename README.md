# meteor-docker

This project aim to create an image containing an already installed meteor
in order to build a release of meteor project.

Based on the idea of golang image https://hub.docker.com/_/golang/.

```bash
docker run --rm \
  -v "$PWD":/usr/src/my-app \
  -w /usr/src/my-app \
  gosselj/meteor \
  /bin/bash -c "set -x && \
  rm -rf .meteor/local && \
  meteor npm install && \
  meteor build ."
```

Then you have my-app.tar.gz in your current directory
