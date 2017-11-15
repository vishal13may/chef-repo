FROM ubuntu:16.04
MAINTAINER Vishal Oswal

RUN apt-get update
RUN apt-get install -y zlib1g=1:1.2.8.dfsg-2ubuntu4.1
RUN apt-get install -y tzdata=2016j-0ubuntu0.16.04 || apt-get install -y tzdata
RUN apt-get install -y python2.7-minimal=2.7.12-1ubuntu0~16.04.1
RUN apt-get install -y python-pil=3.1.2-0ubuntu1.1
RUN apt-get install -y python-ndg-httpsclient=0.4.0-3
RUN apt-get install -y python-minimal=2.7.11-1
RUN apt-get install -y python-imaging=3.1.2-0ubuntu1.1
RUN apt-get install -y python-gobject-2=2.28.6-12ubuntu1
RUN apt-get install -y libtiff5=4.0.6-1ubuntu0.2
RUN apt-get install -y libstdc++6=5.4.0-6ubuntu1~16.04.4 || apt-get install -y libstdc++6
RUN apt-get install -y libssl1.0.0=1.0.2g-1ubuntu4.9
RUN apt-get install -y libpython2.7-stdlib=2.7.12-1ubuntu0~16.04.1
RUN apt-get install -y libpython2.7-minimal=2.7.12-1ubuntu0~16.04.1
RUN apt-get install -y liblzma5=5.1.1alpha+20120614-2ubuntu2
RUN apt-get install -y libjpeg-turbo8=1.4.2-0ubuntu3
RUN apt-get install -y libjbig0=2.1-3.1
RUN apt-get install -y libgcc1=1:6.0.1-0ubuntu1
RUN apt-get install -y libffi6=3.2.1-4
RUN apt-get install -y libc6=2.23-0ubuntu9
RUN apt-get install -y libbz2-1.0=1.0.6-8	
RUN apt-get install -y python-pip

RUN pip install numpy==1.13.3
RUN pip install scipy
RUN pip install scikit_learn==0.19.1

COPY demo.py /demo.py
# CMD ["demo.py"]
ENTRYPOINT python demo.py
