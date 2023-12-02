# Use an x86_64 Alpine base image
FROM --platform=linux/amd64 alpine:latest

# Install NASM, binutils, and FASM
RUN apk add --no-cache nasm binutils make

WORKDIR /workspace
