FROM continuumio/miniconda3

ADD entrypoint.sh /entrypoint.sh
RUN apt-get update
RUN conda install pytorch -c pytorch -y
RUN chgrp root /etc/passwd && \
    chmod 666 /etc/passwd && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh",]
