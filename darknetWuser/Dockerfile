FROM darknet:100
ENV USER="hoge"
ENV PASSWD="hogehoge"
ENV HOME=/home/${USER}
RUN apt-get -y update
RUN echo '* libraries/restart-without-asking boolean true' |  debconf-set-selections
RUN apt-get -y upgrade
RUN apt -y install xfce4-terminal
RUN useradd -m ${USER} && \
    echo ${USER}:${PASSWD} | chpasswd && \
    echo "${USER} ALL=(ALL) ALL" >> /etc/sudoers
RUN sudo usermod -a -G video ${USER}
USER ${USER}
WORKDIR ${HOME}
CMD ["/bin/bash"]

