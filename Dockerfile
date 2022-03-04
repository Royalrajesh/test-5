FROM golang:1.15-alpine
LABEL maintainer="Frank Wilkerson"

RUN apk add --no-cache gcc musl-dev git
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.38.0
RUN mv /go/bin/golangci-lint /usr/local/bin/
RUN wget -O /usr/local/bin/swagger "https://github.com/go-swagger/go-swagger/releases/download/v0.26.1/swagger_linux_amd64"
RUN chmod +x /usr/local/bin/swagger
RUN wget -O /usr/local/bin/go-acc "https://github.com/fwilkerson/go-acc/releases/download/v0.2.6/go-acc_linux_amd64"
RUN chmod +x /usr/local/bin/go-acc
