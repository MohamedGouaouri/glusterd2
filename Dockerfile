FROM golang


ENV GOPATH="/go/"

ENV SRCDIR="/go/src/github.com/gluster/glusterd2"

WORKDIR ${SRCDIR}
COPY . ${SRCDIR}
RUN ${SRCDIR}/install-go-tools.sh
# RUN rm ${SRCDIR}/go.mod
ENV GO111MODULE=off
RUN make


