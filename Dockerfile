FROM golang:1.22-bookworm
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o server .
EXPOSE 8000
CMD ./server