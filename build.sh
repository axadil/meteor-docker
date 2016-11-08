#!/bin/bash

IMAGE_NAME="gosselj/meteor"

TAG_1_3="1.3"
ALIAS_TAG_1_3="1.3.5 1.3.5.1"
TAG_1_4="1.4"
ALIAS_TAG_1_4="1.4.2"

docker build -t ${IMAGE_NAME}:${TAG_1_3} ./1.3/
docker push ${IMAGE_NAME}:${TAG_1_3}
for tag in ${ALIAS_TAG_1_3}; do
	docker tag ${IMAGE_NAME}:${TAG_1_3} ${IMAGE_NAME}:${tag}
	docker push ${IMAGE_NAME}:${tag}
	docker rmi ${IMAGE_NAME}:${tag}
done

docker build -t ${IMAGE_NAME}:${TAG_1_4} ./1.4/
docker push ${IMAGE_NAME}:${TAG_1_4}
for tag in ${ALIAS_TAG_1_4}; do
	docker tag ${IMAGE_NAME}:${TAG_1_4} ${IMAGE_NAME}:${tag}
	docker push ${IMAGE_NAME}:${tag}
	docker rmi ${IMAGE_NAME}:${tag}
done

docker build -t ${IMAGE_NAME}:latest ./latest/
docker push ${IMAGE_NAME}:latest
docker rmi ${IMAGE_NAME}:latest
