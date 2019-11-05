FROM ubuntu:18.04
RUN apt update
RUN apt install iputils-ping -y
ENTRYPOINT ping 
CMD ["1.1.1.1"]
