FROM rastasheep/ubuntu-sshd:18.04
# https://github.com/rastasheep/ubuntu-sshd

ENV DEBIAN_FRONTEND=noninteractive
RUN  apt update && apt install -y vim mc
ENTRYPOINT ["/bin/sh","-c", "cp /xxh/xxh-dev/keys/id_rsa.pub /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys && chmod 0600 /root/.ssh/authorized_keys && /usr/sbin/sshd -D"]
