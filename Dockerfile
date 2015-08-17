FROM onosproject/onos:1.2
MAINTAINER David Bainbridge <dbainbri@ciena.com>
COPY ./docker-entry-point /docker-entry-point
RUN chmod 755 /docker-entry-point
ENTRYPOINT ["/docker-entry-point"]
