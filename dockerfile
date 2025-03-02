# 构建阶段
FROM golang:1.21 AS builder
WORKDIR /app
COPY . .
RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -o app .

# 运行阶段
FROM alpine:3.20
COPY --from=builder /app/app /usr/local/bin/app
EXPOSE 3000
CMD ["/usr/local/bin/app"]