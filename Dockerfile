FROM golang:latest
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o server .
EXPOSE 8000
CMD ./server
