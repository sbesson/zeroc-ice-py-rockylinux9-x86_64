# Dockerfile for lowest common denominator Linux native artifact build
# --------------------------------------------------------------------
FROM rockylinux:9

RUN dnf update -y

RUN dnf install -y 'dnf-command(config-manager)' && \
    dnf config-manager --set-enabled crb
RUN dnf install -y \
    bzip2-devel \
    gcc \
    gcc-c++ \
    make \
    openssl-devel \
    python3-devel \
    python3-wheel
