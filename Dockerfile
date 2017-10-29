FROM ubuntu:latest
MAINTAINER Joao Ribeiro <makaan77@gmail.com>
#ONBUILD ADD script.py /home
RUN apt-get update && apt-get --assume-yes install python3
RUN apt-get --assume-yes install python3-pip
RUN python3 -m pip install setuptools
ADD packs  /home
WORKDIR /home/mimesis

#RUN python3 /home/mimesis/setup.py install
RUN  make install
#CMD ["python","/home/script.py"]
CMD ["python3"]
