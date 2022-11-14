# ros-melodic-gazebo9

A docker image for running gazebo9 on ROS melodic.

## Quick Start

Clone this repository and run the following commands in the cloned repository:

```bash
docker build --network=host -t ros-melodic-gazebo9 .
./run.sh
```

If you get a permision error with the shell script then make it executable with the command `chmod +x ./run.sh` and run the shell script again. 

On completion, you can access the container via ssh with the command `ssh -Xp 2222 root@localhost` and enjoy!

P.S. you might fall into the famous HOST VERIFICATION ERROR with SSH. To avert this please clear all the host names on the file `.ssh/known_hosts`

## Result
![Screenshot from 2022-11-14 18-10-00](https://user-images.githubusercontent.com/44110875/201728243-70f22a3a-0a53-42ef-8fb3-d7c16399653d.png)
