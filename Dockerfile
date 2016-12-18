FROM ubuntu:xenial
RUN apt-get update && apt-get install -y libluajit-5.1 libjson-perl && mkdir /opt/luabash
ADD luabash.so /opt/luabash/
ADD bash-json-extension /opt/bash-json-extension
ADD json.bashrc /opt/
RUN echo 'source /opt/json.bashrc' >> /etc/bash.bashrc
RUN apt clean
CMD bash 
