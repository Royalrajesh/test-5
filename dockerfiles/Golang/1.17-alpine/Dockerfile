FROM golang:1.17-alpine

RUN apk add --no-cache gcc musl-dev git
RUN wget https://github.com/golangci/golangci-lint/releases/download/v1.44.0/golangci-lint-1.44.0-linux-amd64.tar.gz
RUN tar -xzf golangci-lint-1.44.0-linux-amd64.tar.gz
RUN mv golangci-lint-1.44.0-linux-amd64/golangci-lint /usr/local/bin
RUN chmod +x /usr/local/bin/golangci-lint
RUN wget -O /usr/local/bin/swagger "https://github.com/go-swagger/go-swagger/releases/download/v0.29.0/swagger_linux_amd64"
RUN chmod +x /usr/local/bin/swagger
RUN wget "https://github.com/ory/go-acc/releases/download/v0.2.7/go-acc_0.2.7_linux_amd64.tar.gz"
RUN tar -xzf go-acc_0.2.7_linux_amd64.tar.gz
RUN mv go-acc /usr/local/bin
RUN chmod +x /usr/local/bin/go-acc
