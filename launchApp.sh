#!/bin/bash
set -exuo pipefail

# clean occasional previous image 
docker rmi websurfer21/nodeContainer3 || echo "image did not exist, proceding..."
docker build -t websurfer21/nodeContainer . 
docker push websurfer21/nodeContainer
docker run --rm -it -p 8084:80 websurfer21/nodeContainer