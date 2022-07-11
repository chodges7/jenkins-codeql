FROM jenkins/jenkins:lts

USER root
RUN apt-get update

RUN curl -L -O https://github.com/github/codeql-action/releases/latest/download/codeql-bundle-linux64.tar.gz
RUN tar -xvzf ./codeql-bundle-linux64.tar.gz
RUN mv codeql /usr/local/bin

# drop back to the regular jenkins user - good practice
USER jenkins
