#sudo apt-get install libapr1-dev libaprutil1-dev
#apt-get install pcre-devel 
#sudo apt-get install pcre-devel 
#sudo apt-get install libpcre3-dev
#sudo apt-get install build-essential
#apt-get install apr-util
#sudo apt-get install apr-util
#sudo apt-get install apr
#sudo apt-get install libtool
#apt-get install apache2-utils
#sudo apt-get install apache2-utils
#sudo apt-get install apr apr-util
#sudo apt-get install apr-util
#sudo apt-get install libapr1 libapr1-dev
#sudo apt-get install libtoolT
#sudo apt-get install libtoolT
#apt-get install apt-file
#sudo apt-get install apt-file
#sudo apt-get install libbind-dev
#sudo apt-get install apache2-dev
#apache2 --> compailation
# before run 'make' in "httpd", we need to install and run 'make' in "APR" and "APR-util"
sudo -i
cd /home/ubuntu/
mkdir apache2_all
cd apache2_all
sudo apt-get install libexpat1-dev libapr1-dev libaprutil1-dev libpcre3-dev apache2-dev libbind-dev apt-file build-essential -y
 libapr1 libapr1-dev
 sudo apt-get -u dist-upgrade 
 #1......APR 

 wget http://apachemirror.wuchna.com//apr/apr-1.7.0.tar.gz
 tar -xvzf apr-1.7.0.tar.gz
 rm -rvf apr-1.7.0.tar.gz
 cd apr-1.7.0
 ./configure
 make clean
 make
 make install
 cd ..

 #2...... APR-Utils

 wget http://apachemirror.wuchna.com//apr/apr-util-1.6.1.tar.gz
 tar -xvf apr-util-1.6.1.tar.gz
 rm -rvf apr-util-1.6.1.tar.gz
 cd apr-util-1.6.1
 ./configure --with-apr=/usr/local/apr
 make clean
 make
 make install
 cd ..

 #.......httpd
 wget http://apachemirror.wuchna.com//httpd/httpd-2.4.41.tar.gz
 tar -xvzf httpd-2.4.41.tar.gz
 cd httpd-2.4.1
 #./configure --enable-file-cache --enable-cache --enable-disk-cache --enable-mem-cache --enable-deflate --enable-expires --enable-headers --enable-usertrack --enable-ssl --enable-cgi --enable-vhost-#alias --enable-rewrite --enable-so --with-apr=/usr/local/apr/
 ./configure
 make clean
 make
 make install
 cd ..

