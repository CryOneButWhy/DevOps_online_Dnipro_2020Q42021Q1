## Task 9.3 
Creating a web application which shows random picture every page reload. The pictures are taken from the local storage in order to be sure they are always present.
Python code part:    
![application](./screenshots/app.png)  
We will be running it in a container created from the image bases on the following **Dockerfile**:  
![dockerfile](./screenshots/dockerfile.png)  
Building image:  
![dockerfile](./screenshots/docker_build.png)  
Running docker container and forwarding ports:  
![dockerfile](./screenshots/docker_run.png)  
Checkig the application:  
![dockerfile](./screenshots/working.png)  
Application files:  
[app.py](./flask_app/app.py)  
[index.html](./flask_app/templates/index.html)  
[Dockerfile](./flask_app/Dockerfile)  
