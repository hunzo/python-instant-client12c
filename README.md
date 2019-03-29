# python-instant-client12c

#create folder ./templates
#create folder ./oracle-instantclient
download oracle https://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html

instantclient-basic-linux.x64-12.2.0.1.0.zip
instantclient-sdk-linux.x64-12.2.0.1.0.zip
instantclient-sqlplus-linux.x64-12.2.0.1.0.zip

copy to ./oracle-instantclient

Build:

docker build -t temp/python-instant-client12c .


Test RUN: 

docker run -it --rm -p 8081:5000 --name web -v ${PWD}:/opt/data/app temp/python-instant-client12c bash
