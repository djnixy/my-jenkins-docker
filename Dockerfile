FROM jenkins/jenkins:lts-jdk17

ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/jenkins.yaml

COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

COPY InitialConfig.groovy /usr/share/jenkins/ref/init.groovy.d/InitialConfig.groovy

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt