#This facilitates run in Jenkins

##### Unit Testing ##############
#grunt test

##### Integration Testing #######
sudo SPRING_PROFILES_ACTIVE=fast /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin/mvn -Dmaven.test.failure.ignore=true test

##### E2E Testing ###############
a=`ps -ef|grep java|grep spring-boot|awk '{print $2}'`
if [ -n "$a" ]; then
	echo "Killing:" $a
	kill -9 $a
fi
sudo /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin/mvn -Pfast spring-boot:run &
#sleep 60
#/var/lib/jenkins/tools/jenkins.plugins.nodejs.tools.NodeJSInstallation/Node/bin/npm install
#sudo grunt protractor-xvfb