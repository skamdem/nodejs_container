:: run [ $ launchApp.bat ] to execute this script in command prompt
docker build -t websurfer21/nodeimage . 
docker push websurfer21/nodeimage
docker run --name nodecontainer --rm -it -p 8084:80 websurfer21/nodeimage
docker rmi websurfer21/nodeimage