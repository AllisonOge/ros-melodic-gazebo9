# ros-melodic-gazebo9

A docker image for running gazebo9 on ROS melodic.

## Quick Start

### Linux

Clone this repository and run the following commands in the cloned repository:

```bash
docker build --network=host -t ros-melodic-gazebo9 .
./run.sh
```

If you get a permision error with the shell script then make it executable with the command `chmod +x ./run.sh` and run the shell script again. 

On completion, you can access the container via ssh with the command `ssh -Xp 2222 root@localhost` and enjoy!

P.S. you might fall into the famous HOST VERIFICATION ERROR with SSH. To avert this please clear all the host names on the file `.ssh/known_hosts`

![Screenshot from 2022-11-14 18-10-00](https://user-images.githubusercontent.com/44110875/201728243-70f22a3a-0a53-42ef-8fb3-d7c16399653d.png)

### Windows

Clone this repository and build the docker image with the command `docker build -t ros-melodic-gazebo9 .` in the cloned repository 

To enable X11 forwarding, install [Xming Windows X server](https://sourceforge.net/projects/xming/) and set the display to multiple windows and the display number to 0. Then, accept the defaults for the configuration.  

![xlaunch-settings](https://wiki.cortexlab.fr/lib/exe/fetch.php?media=win_ssh_xlaunch1.png)

Then run the following docker command to create a iteractive bash shell in the container

```bash
docker run -it -e DISPLAY=host.docker.internal:0.0 --name=projectuav ros-melodic-gazebo9:latest bash
```
P.S. This command should be run only once and with the container running, create as many interactive shells as required in the container with the command.

```bash
docker exec -it projectuav bash
```
![Screenshot (114)](https://user-images.githubusercontent.com/44110875/201895820-337f383b-915e-410f-8251-738cbc25347b.png)
