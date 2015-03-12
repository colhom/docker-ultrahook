FROM ubuntu:14.04

MAINTAINER colhom@gmail.com

RUN apt-get update
RUN apt-get -y install ruby build-essential ca-certificates
RUN apt-get -y install ruby-dev
RUN gem install ultrahook

ADD ./ultrahook.bash /usr/bin/

ENTRYPOINT ["/usr/bin/ultrahook.bash"]
