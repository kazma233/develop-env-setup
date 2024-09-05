FROM jenkins/jenkins:latest

USER root
COPY build_env.sh build_env.sh
RUN ["/bin/bash", "-c", "chmod +x build_env.sh && ./build_env.sh"]

USER jenkins
