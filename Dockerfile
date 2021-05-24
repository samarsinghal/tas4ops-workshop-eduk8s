FROM quay.io/eduk8s/base-environment:201203.020609.1ab533d

USER root

RUN yum -y install wget

COPY --chown=1001:0 . /home/eduk8s/

RUN mv /home/eduk8s/workshop /opt/workshop

# RUN fix-permissions /home/eduk8s

# USER 1001