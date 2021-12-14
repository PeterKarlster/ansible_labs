FROM	ubuntu:20.04

ARG	WORKDIR
ARG	HOME=/root
ARG	SSHDIR="${HOME}"/.ssh

WORKDIR	"${WORKDIR}"

RUN	apt-get update && apt-get -y install software-properties-common
RUN	add-apt-repository --yes --update ppa:ansible/ansible
RUN	apt-get -y install ansible ssh sudo
RUN	apt-get -y install iputils-ping netcat net-tools vim bat

RUN	mkdir -v "${SSHDIR}" && touch "${SSHDIR}"/known_hosts

COPY	./id_rsa* "${SSHDIR}"/

RUN	chown -R root:root "${HOME}"

ENTRYPOINT ["sleep", "1d"]
