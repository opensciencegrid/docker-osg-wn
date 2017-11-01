# GENERATED - EDIT Dockerfile.in INSTEAD

FROM centos:centos6

LABEL name="OSG 3.4 Worker Node Client on EL 6"
LABEL build-date="20171101-1519"

RUN yum -y install https://repo.grid.iu.edu/osg/3.4/osg-3.4-el6-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install  \
                   osg-wn-client \
                   osg-wn-client-glexec \
                   redhat-lsb-core

# Install Singularity
RUN yum -y install --enablerepo=osg-upcoming-development singularity && \
    yum clean all
