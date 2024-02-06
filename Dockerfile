FROM golang:1.21

WORKDIR /go/src/github.com/paul-at-start/pg_flame

COPY . .

RUN make build

ENTRYPOINT [ "pgflame" ]
