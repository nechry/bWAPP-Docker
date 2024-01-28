FROM tutum/lamp:latest
LABEL maintainer="nechry <nechry@gmail.com>"
RUN apt -y update
RUN apt -y upgrade
# remove netcat-openbsd and install netcat-traditional
RUN apt -y remove netcat-openbsd
RUN apt -y install netcat-traditional
# delete default hello-world-lamp form server-php
RUN rm -rf /app
# copy bWAPP v2.2 to /app
COPY /bWAPP /app/
CMD ["/run.sh"]