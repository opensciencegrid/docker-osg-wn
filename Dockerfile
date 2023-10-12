# Default to EL8 builds
ARG IMAGE_BASE=quay.io/centos/centos:stream8

FROM $IMAGE_BASE

ARG EL_VER=9
ARG OSG_RELEASE=23
ARG BASE_YUM_REPO=release
ARG BUILDDATE

LABEL name="OSG ${OSG_RELEASE} Worker Node Client on EL ${EL_VER} + ${BASE_YUM_REPO} repos"
LABEL build-date=${BUILDDATE}

RUN if [[ ${OSG_RELEASE} == "23" ]]; then \
        REL_URL_SNIPPET=23-main; \
    else \
        REL_URL_SNIPPET=${OSG_RELEASE}; \
    fi && \
    yum -y install https://repo.opensciencegrid.org/osg/${REL_URL_SNIPPET}/osg-${REL_URL_SNIPPET}-el${EL_VER}-release-latest.rpm \
                   epel-release \
                   yum-utils && \
    if [[ ${EL_VER} == 7 ]]; then \
        yum -y install yum-plugin-priorities; \
    elif [[ ${EL_VER} == 8 ]]; then \
        yum-config-manager --enable powertools; \
    elif [[ ${EL_VER} == 9 ]]; then \
        yum-config-manager --enable crb; \
    fi && \
    if [[ ${BASE_YUM_REPO} == "devel" ]]; then \
        yum-config-manager --enable osg-development; \
    elif [[ ${BASE_YUM_REPO} != "release" ]]; then \
        yum-config-manager --enable osg-${BASE_YUM_REPO}; \
    fi && \
    yum -y install   \
                   osg-wn-client \
                   redhat-lsb-core \
                   openssh-server \
                   apptainer && \
    yum clean all && \
    rm -rf /var/cache/yum/*
