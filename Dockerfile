FROM golang:1.15
WORKDIR /go/src/
COPY . .
RUN go mod download
RUN go build -o api cmd/main.go

EXPOSE 4000
ENTRYPOINT ["./api"]

