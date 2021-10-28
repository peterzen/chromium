FROM debian

RUN apt-get update && apt-get -y install x11-apps chromium ssh

COPY sshd_config /etc/ssh

CMD ["/usr/sbin/sshd", "-D", "-p", "2222"]
