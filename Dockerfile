FROM golang:latest
LABEL org.opencontainers.image.description="Ansible Controller running on Rockylinux 8"
        
        
          
LABEL org.opencontainers.image.authors="simeononsecurity"LABEL org.opencontainers.image.source="https://github.com/simeononsecurity/rocky-ansible"
        
        
          


WORKDIR /go/src/discord-stock-ticker

COPY . .

ARG TARGETOS=linux
ARG TARGETARCH=amd64

RUN GOOS=$TARGETOS GOARCH=$TARGETARCH go build -o discord-stock-ticker

ENTRYPOINT ["/go/src/discord-stock-ticker/discord-stock-ticker"]
