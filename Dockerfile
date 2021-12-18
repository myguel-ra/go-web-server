# syntax=docker/dockerfile:1
FROM golang:1.16-alpine AS build
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY *.go ./
RUN go build -o /http-server


FROM alpine:latest 
LABEL maintainer="Miguel Almeida" \
      description="Demonstration purposes only"

WORKDIR /
COPY --from=build /http-server /http-server

EXPOSE 8080
ENTRYPOINT ["/http-server"]