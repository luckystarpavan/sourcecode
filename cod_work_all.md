Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@luckystarpavan 
0
00luckystarpavan/mark1
 Code Issues 0 Pull requests 0 Actions Projects 0 Wiki Security Insights Settings
mark1/All-jenkins,apache,tomcat up.txt
@luckystarpavan luckystarpavan file name changed
4f74121 on Oct 15
110 lines (87 sloc)  3.87 KB
  
**************************************************************JENKINS*************************************************888
sudo -i
yum -y update
yum install java-1.8.0-openjdk
java -version
ls -la
update-alternatives --config java   --------------- type '2'
yum install wget
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
ps -ef | grep jenkins
touch Jenkins‌OutputFile
java -jar jenkins.war --httpPort=8080
history >> Jenkins‌OutputFile
   
----------------------------------------------
--------------------->reference<----------------------
yum -y update
yum install java-1.8.0-openjdk
java -version
ls -la
update-alternatives --config java
java -version
find /usr/lib/jvm/java-1.8* | head -n 3
#output----> /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.47.amzn1.x86_64/jre/lib                  #  --> paste this in vi .bash_profile
					|
					|
				        \/

	#JAVA_HOME =/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.47.amzn1.x86_64/jre/lib
	#PATH=$PATH:$JAVA_HOME:$HOME/bin									#--> save the file --> :wq!

echo $JAVA_HOME                                                 #--> if the above path is notreflecting you can refresh the bash_profile
source ~/.bash_profile



wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
java -jar jenkins.war --httpPort=8080
-------------------------------------------------

cat /root/.jenkins/secrets/initialAdminPassword

----------------------->username: admin           Pass:  cae59d44ff7745ef962fa81a8e169c91
cat /var/lib/jenkins/secrets/initialAdminPassword
or 
cat $JENKINS_HOME/secrets/initialAdminPassword
--------------------------------------------------

*******************************************************************************APACHE SERVER BUILD *****************************************************************************

yum install httpd
cd /var/www/html/
vi index.html
service httpd status      # initially it will be in stoped status 
service httpd start
service httpd status      # take the public IP and run in port: 80

******************************************************************************** Tomcat server **********************************************************************************

yum install java-1.8* -y
java -version
cd /opt
wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
ls
tar -zxvf apache-tomcat-8.5.45.tar.gz
                                                      #ls
cd apache-tomcat-8.5.45
                                                      #ls
                                                      # ouput:  bin  BUILDING.txt  conf  CONTRIBUTING.md  lib  LICENSE  logs  NOTICE  README.md  RELEASE-NOTES  RUNNING.txt  temp  webapps  work
cd bin
chmod +x startup.sh
chmod +x shutdown.sh
                                                       #ls -ltr            -----------> to check whether startup.sh and shutdown.sh have given execute permission
./startup.sh
ps -ef | grep tomcat
cd ..
cd conf
find / -name context.xml

#OUTPUT
#/opt/apache-tomcat-8.5.45/webapps/manager/META-INF/context.xml            --> comment the VALUE block
#/opt/apache-tomcat-8.5.45/webapps/host-manager/META-INF/context.xml       --> comment the VALUE block
#/opt/apache-tomcat-8.5.45/conf/context.xml


#vi /opt/apache-tomcat-8.5.45/webapps/manager/META-INF/context.xml
#vi /opt/apache-tomcat-8.5.45/webapps/host-manager/META-INF/context.xml       


cd ..
cd bin
./shutdown.sh                 # in /opt/apache-tomcat-8.5.45/bin
./startup.sh                  # in /opt/apache-tomcat-8.5.45/bin
cd ..
cd conf
vi tomcat-users.xml           # add the users as per the TOMCAT USERS AND PASSWORD in /opt/apache-tomcat-8.5.45/conf

cd ..
cd bin
./shutdown.sh
./startup.sh
cd ..
cd conf
cd conf
vi server.xml                # change the port if jenkins is running in the same port (8080) 





© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
