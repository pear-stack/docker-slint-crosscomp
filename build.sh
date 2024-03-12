#!/bin/bash -e

IMAGE="slint"

echo "Building ${IMAGE}"
docker build \
	--no-cache \
	-t "${IMAGE}" \
	.
