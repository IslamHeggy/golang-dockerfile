FROM golang:latest
WORKDIR /go/src/
COPY ./ ./
RUN  CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o yourservicename .

FROM bash
WORKDIR app/
COPY --from=0 /go/src/yourservicename .
RUN addgroup -S projectname && adduser -S -g projectname projectname && chown -R projectname:projectname .
USER projectname
CMD ["bash", "-c", "/app/yourservicename"]
