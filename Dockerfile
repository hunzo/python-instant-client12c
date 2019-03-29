# INSTALL PYTHON IMAGE
#build:
#
#docker build -t oracle/pyorainstanceclient12 .
#
#run:
#
#docker run -d -p 80:5000 --name web -v <host-absolute-path>:/opt/data/app oracle/pyorainstanceclient12
#
FROM python:3.7
MAINTAINER Hunzo <takraw_s@hotmail.com>

# INSTALL TOOLS
RUN apt-get update \
    && apt-get -y install unzip \
    && apt-get -y install libaio-dev \
    && apt-get -y install vim \
    && mkdir -p /opt/data/app

ADD ./oracle-instantclient/ /tmp
ADD ./install-instantclient.sh /opt/data
ADD ./requirements.txt /opt/data

WORKDIR /opt/data/app

ENV ORACLE_HOME=/opt/oracle/instantclient
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME

ENV OCI_HOME=/opt/oracle/instantclient
ENV TNS_ADMIN=/opt/oracle/instantclient
ENV OCI_LIB_DIR=/opt/oracle/instantclient
ENV OCI_INCLUDE_DIR=/opt/oracle/instantclient/sdk/include

# INSTALL INSTANTCLIENT AND DEPENDENCIES
RUN /opt/data/install-instantclient.sh \
    && pip install -r /opt/data/requirements.txt

ADD ./tnsnames.ora /opt/oracle/instantclient

EXPOSE 5000
CMD python app.py
