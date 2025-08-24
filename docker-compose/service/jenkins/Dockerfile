FROM jenkins/jenkins:latest

USER root

WORKDIR /tmp_script

COPY build_env.sh build_env.sh
RUN ["/bin/bash", "-c", "chmod +x build_env.sh && ./build_env.sh && rm -f ./build_env.sh"]


USER jenkins

# WORKDIR /script

# COPY --chown=jenkins:jenkins --chmod=644 install_go.sh install_go.sh
# chmod +x install_go.sh && ./install_go.sh && rm -f install_go.sh

COPY --chown=jenkins:jenkins --chmod=644 install_rust.sh install_rust.sh
RUN chmod +x install_rust.sh && ./install_rust.sh && rm -f install_rust.sh

WORKDIR /var/jenkins_home