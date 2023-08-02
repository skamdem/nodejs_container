:: run [ $ launchApp.bat ] to execute this script in command promt
docker build -t websurfer21/nodecontainer . 
docker push websurfer21/nodecontainer
docker run --name nodecontainer --rm -it -p 8084:80 websurfer21/nodecontainer
docker rmi websurfer21/nodecontainer