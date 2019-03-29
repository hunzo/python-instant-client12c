# python-instant-client12c

1. create folder ./templates
2. create folder ./oracle-instantclient
3. download oracle https://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html
    - instantclient-basic-linux.x64-12.2.0.1.0.zip
    - instantclient-sdk-linux.x64-12.2.0.1.0.zip
    - instantclient-sqlplus-linux.x64-12.2.0.1.0.zip

4. copy *.zip to ./oracle-instantclient

##__Build:__

```docker build -t temp/python-instant-client12c .```


##__Test RUN:__ 

```docker run -it --rm -p 8081:5000 --name web -v ${PWD}:/opt/data/app temp/python-instant-client12c bash```
