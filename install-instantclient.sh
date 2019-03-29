#!/usr/bin/env bash
unzip /tmp/instantclient-sdk-linux.x64-12.2.0.1.0.zip -d /opt/oracle
unzip /tmp/instantclient-sqlplus-linux.x64-12.2.0.1.0.zip -d /opt/oracle
unzip /tmp/instantclient-basic-linux.x64-12.2.0.1.0.zip -d /opt/oracle
mv /opt/oracle/instantclient_12_2 /opt/oracle/instantclient
rm -rf /tmp/instantclient*
ln -s /opt/oracle/instantclient/libclntsh.so.12.2 /opt/oracle/instantclient/libclntsh.so
ln -s /opt/oracle/instantclient/libocci.so.12.2 /opt/oracle/instantclient/libocci.so

export ORACLE_HOME="/opt/oracle/instantclient"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME

export OCI_HOME="/opt/oracle/instantclient"
export OCI_LIB_DIR="/opt/oracle/instantclient"
export OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"
export PATH=$ORACLE_HOME:$PATH
