FROM golang:1.15-alpine as builder
RUN apk add --no-cache ca-certificates git
RUN apk add build-base
WORKDIR /src

# restore dependencies
COPY go.mod go.sum ./
RUN go mod download
COPY . .

# Skaffold passes in debug-oriented compiler flags
ARG SKAFFOLD_GO_GCFLAGS
RUN go build -gcflags="${SKAFFOLD_GO_GCFLAGS}" -o /go/bin/productcatalogservice .

# Creation de la deuxieme image qui va utiliser la premier 
FROM alpine as release
RUN apk add --no-cache ca-certificates \
    busybox-extras net-tools bind-tools
WORKDIR /src
# j'appel l'image builder pour copier des dossiers
COPY --from=builder /go/bin/productcatalogservice /src/server

ENV GOTRACEBACK=single

EXPOSE 3550
ENTRYPOINT ["/src/server"]