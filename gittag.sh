#!/bin/sh
TAG=(
if [ -z "${TAG}"  ]; then
       echo "Please provide a tag."
          exit 1
fi
git tag -a ${TAG} -m 'add tag' && git push -f origin refs/tags/${TAG}
)

