FROM ubuntu:focal-20230801

# Set this before `apt-get` so that it can be done non-interactively
ENV DEBIAN_FRONTEND noninteractive
ENV TZ America/New_York
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN /bin/bash <<EOF
apt-get update
apt-get install -y ssmtp
apt-get clean
rm -rf /var/lib/apt/lists/*
EOF

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]
