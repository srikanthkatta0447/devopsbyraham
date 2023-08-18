#! /bin/bash
#Launch an instance with 9000 and t2.medium
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
amazon-linux-extras install java-openjdk11 -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar
cd sonarqube-8.9.6.50800/bin/linux/
./sonar.sh start
./sonar status
