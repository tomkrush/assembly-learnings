# Use an x86_64 Alpine base image
FROM --platform=linux/amd64 alpine:latest

# Install NASM and binutils
RUN apk add --no-cache nasm binutils make 

WORKDIR /workspace
