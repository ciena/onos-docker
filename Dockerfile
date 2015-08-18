FROM onosproject/onos:latest
MAINTAINER David Bainbridge <dbainbri@ciena.com>
# with changes made to the latets ON.Labs container this is really no
# longer needed, but kepts as an alias for now.
ENTRYPOINT ["./bin/onos-service"]
