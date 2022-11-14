FROM osrf/ros:melodic-desktop-full

WORKDIR /root

# set an empty password for root
RUN sed -i -e 's%root:\*:%root:$6$fEFUE2YaNmTEH51Z$1xRO8/ytEYIo10ajp4NZSsoxhCe1oPLIyjDjqSOujaPZXFQxSSxu8LDHNwbPiLSjc.8u0Y0wEqYkBEEc5/QN5/:%' /etc/shadow

# install ssh server
RUN apt-get update && apt-get install -y openssh-server

# listen on port 2222
RUN sed -i 's/^#\?[[:space:]]*Port 22$/Port 2222/' /etc/ssh/sshd_config
RUN sed -i 's/^#\?[[:space:]]*PermitEmptyPasswords no$/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
RUN sed -i 's/^#\?[[:space:]]*PermitRootLogin.*$/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir /run/sshd
RUN chmod 755 /run/sshd

# tweaks for macos / windows
RUN sed -i 's/^#\?[[:space:]]*X11UseLocalhost.*$/X11UseLocalhost no/' /etc/ssh/sshd_config
RUN echo "AddressFamily inet" >> /etc/ssh/sshd_config
RUN touch /root/.Xauthority

# MAVlink install (flight controller package)


# the container's default executable: ssh daemon
CMD [ "/usr/sbin/sshd", "-p", "2222", "-D" ]