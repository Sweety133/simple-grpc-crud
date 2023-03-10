# syntax=docker/dockerfile=1

FROM golang:1.19.4-alpine
WORKDIR /simple-grpc-crud
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o ./cmd ./cmd/server
RUN echo "simple-grpc-crud service started"
CMD ["/simple-grpc-crud/server/"]