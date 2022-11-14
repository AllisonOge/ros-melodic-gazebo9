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

