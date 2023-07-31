docker build -t websurfer21/nodeContainer . 
docker push websurfer21/nodeContainer
docker run --rm -it -p 8084:80 websurfer21/nodeContainer
docker rmi websurfer21/nodeContainer