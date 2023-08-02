#!/bin/bash
set -exuo pipefail

# run [ $ ./launchApp.sh ] to execute this script in bash shell
# clean occasional previous image 
# docker rmi websurfer21/nodeimage || echo "image did not exist, proceding..."
docker build -t websurfer21/nodeimage . 
docker push websurfer21/nodeimage
docker run --name nodecontainer --rm -it -p 8084:80 websurfer21/nodeimage
docker rmi websurfer21/nodeimage