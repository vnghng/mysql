FROM ubuntu:18.04
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y wget 
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-server-5.7_5.7.21-1ubuntu1_amd64.deb
RUN apt-get install mysql-server-5.7 -y
CMD chown -R mysql:mysql /var/lib/mysql \
    && service mysql start \
    && mysql -uroot -p123456
VOLUME /var/log/mysql
