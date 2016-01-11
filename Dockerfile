FROM shift/ruby:2.3.0

MAINTAINER Vincent Palmer <shift@someone.section.me>
USER root
RUN apt-get update \
    && apt-get install x11vnc xvfb firefox --yes

