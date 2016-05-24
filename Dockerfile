FROM ubuntu:14.04

MAINTAINER Pascal Nagel <nagel@porus.org>

RUN apt-get -y update
RUN apt-get -y upgrade

# Install dovecot-imap/pop3 ...
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install dovecot-imapd dovecot-pop3d

EXPOSE 25 587 110 995 143 993
