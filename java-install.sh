#Script writed by : https:github.com/jaweewo
#!/bin/bash
echo "Installing dependencies"
apt install wget
cd /opt
echo "Moving to opt folder"
echo "Proceeding to download Java 8 update 271"
wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" https://javadl.oracle.com/webapps/download/GetFile/1.8.0_271-b09/61ae65e088624f5aaa0b1d2d801acb16/linux-i586/jdk-8u271-linux-x64.tar.gz 
echo "Extracting file"
tar xzf jdk-8u271-linux-x64.tar.gz
echo "Moving to jdk folder"
sleep 2
cd jdk1.8.0_271
echo "Begin Installation"
sleep 2
alternatives --install /usr/bin/java java /opt/jdk1.8.0_271/bin/java 2
echo "Configuring Java version"
sleep 2
alternatives --config java

echo "########################################"
echo "Setting up javac and jar commands"
echo "########################################"
sleep 2
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_271/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_271/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_271/bin/jar
alternatives --set javac /opt/jdk1.8.0_271/bin/javac

echo "Installation suceeded"
echo "Testing java version"
slep 2
java -version
echo "###########################################"
echo "Remember to introduce environment variables"
echo "Write them inside '/etc/bashrc'" 
echo "###########################################"
echo "export JAVA_HOME=/opt/jdk1.8.0_271"
echo "export JRE_HOME=/opt/jdk1.8.0_271/jre"
echo 'export PATH=$PATH:/opt/jdk1.8.0_271/bin:/opt/jdk1.8.0_271/jre/bin'