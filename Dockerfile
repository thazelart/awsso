ARG GO_VERSION=1.22

# Build stage
FROM golang:${GO_VERSION} AS builder

ARG GIT_COMMIT
ARG VERSION

ENV GO111MODULE=auto
ENV CGO_ENABLED=0

WORKDIR $GOPATH/src/github.com/thazelart/awsso
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN make go/build
RUN echo "nonroot:x:65534:65534:Non root:/:" > /etc_passwd


# Final stage
FROM scratch

LABEL maintainer="Thibault HAZELART <thazelart@gmail.com>"

COPY --from=builder /go/bin/awsso /bin/awsso
COPY --from=builder /etc_passwd /etc/passwd

USER nonroot

ENTRYPOINT [ "awsso" ]
CMD [ "version" ]
