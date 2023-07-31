#!/bin/bash
set -exuo pipefail

# clean occasional previous image 
docker rmi websurfer21/nodecontainer || echo "image did not exist, proceding..."

docker build -t websurfer21/nodecontainer . 
docker push websurfer21/nodecontainer
docker run --rm -it -p 8084:80 websurfer21/nodecontainer