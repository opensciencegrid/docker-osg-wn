ARG EL_VER=8

FROM centos:centos${EL_VER}

ARG EL_VER=8
ARG OSG_RELEASE=3.6
ARG BASE_YUM_REPO=release
ARG BUILDDATE

LABEL name="OSG ${OSG_RELEASE} Worker Node Client on EL ${EL_VER} + ${REPO} repos"
LABEL build-date=${BUILDDATE}

RUN yum -y install https://repo.opensciencegrid.org/osg/${OSG_RELEASE}/osg-${OSG_RELEASE}-el${EL_VER}-release-latest.rpm \
                   epel-release \
                   yum-utils && \
    if [[ ${EL_VER} == 7 ]]; then \
        yum -y install yum-plugin-priorities; \
    fi && \
    if [[ ${EL_VER} == 8 ]]; then \
        yum-config-manager --enable powertools; \
    fi && \
    if [[ ${REPO} != "release" ]]; then \
        yum-config-manager --enable osg-${REPO}; \
    fi && \
    yum -y install   \
                   osg-wn-client \
                   redhat-lsb-core \
                   singularity && \
    yum clean all && \
    rm -rf /var/cache/yum/*
