FROM jenkins/jenkins:lts
LABEL maintainer="maheshglm@gmail.com"

USER root
RUN mkdir /var/log/jenkins \
    && mkdir /var/cache/jenkins \
    && chown -R jenkins:jenkins /var/log/jenkins \
    && chown -R jenkins:jenkins /var/cache/jenkins 
USER jenkins

# Install default plugins
COPY plugins.txt /tmp/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /tmp/plugins.txt

#we can increase this to anything as per requirement
#ENV JAVA_OPTS="-Xmx2048m"
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
#we can increase handlerCountMax to 300
#ENV JENKINS_OPTS=" --handlerCountMax=50 --logfile=/var/log/jenkins/jenkins.log"
ENV JENKINS_OPTS=" --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"