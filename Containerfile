FROM docker.io/redhat/ubi9
RUN dnf -y install gcc-c++ kernel-headers && dnf clean all
COPY build.sh /
ENTRYPOINT ["/build.sh"]
