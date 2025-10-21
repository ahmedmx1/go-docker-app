# Use official Go image as the base
FROM golang:1.21-alpine

# Set working directory
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod ./

# Download dependencies
RUN go mod download

# Copy source code
COPY *.go ./

# Build the application
RUN go build -o /myapp

# Expose port
EXPOSE 8080

# Command to run the application
CMD ["/myapp"]