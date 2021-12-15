FROM 	nginx

ARG     SSHDIR=/root/.ssh

RUN 	apt-get update && apt-get -y install ssh net-tools netcat vim python3
RUN	mkdir -p /run/sshd
RUN	sed -i '/PermitRootLogin/s/.*/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN	mkdir -v "${SSHDIR}"

COPY	./authorized_keys "${SSHDIR}"/

EXPOSE	22

ENTRYPOINT ["/usr/sbin/sshd", "-D", "-o", "ListenAddress=0.0.0.0"]

