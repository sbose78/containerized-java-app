FROM centos:7
ENV LANG=en_US.utf8

RUN yum -y update && \
    yum install -y bzip2 tar java-1.8.0-openjdk-devel nmap-ncat git \
      python-setuptools wget unzip which \
       GConf2 && \
        yum -y clean all

ENV PROJECT_USER_NAME=myproject

RUN useradd --user-group --create-home --shell /bin/false ${PROJECT_USER_NAME}

ENV HOME=/home/${PROJECT_USER_NAME}
ENV WORKSPACE=$HOME/angular-project
ENV SERVER_PORT=9808

RUN mkdir $WORKSPACE

COPY . $WORKSPACE
RUN chown -R ${PROJECT_USER_NAME}:${PROJECT_USER_NAME} $HOME/*
USER ${PROJECT_USER_NAME}
WORKDIR $WORKSPACE/


RUN cd $WORKSPACE && wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && tar xzf apache-maven-3.3.9-bin.tar.gz && ln -s apache-maven-3.3.9 maven
ENV PATH=$PATH:$WORKSPACE/maven/bin

RUN chmod +x ${WORKSPACE}/run_server.sh