FROM golang:latest

LABEL org.opencontainers.image.description="Add live stock & crypto prices to your discord sidebar"   
LABEL org.opencontainers.image.authors="simeononsecurity"LABEL org.opencontainers.image.source="https://github.com/simeononsecurity/discord-stock-ticker"
LABEL org.opencontainers.image.authors="simeononsecurity"

WORKDIR /go/src/discord-stock-ticker

COPY . .

ARG TARGETOS=linux
ARG TARGETARCH=amd64

RUN GOOS=$TARGETOS GOARCH=$TARGETARCH go build -o discord-stock-ticker

ENTRYPOINT ["/go/src/discord-stock-ticker/discord-stock-ticker"]
