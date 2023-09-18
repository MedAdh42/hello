# Parent image from debian distribution
FROM debian:stable-slim

# Upgrade system and package manager
RUN apt-get update && apt-get upgrade

# Install tools for C++
RUN apt-get install -y cmake ninja-build build-essential git

# Clone prject repo
RUN git clone https://github.com/MedAdh42/hello.git

# Build and install project
RUN cd hello && mkdir build && mkdir install && cd build
RUN cmake -G "Ninja" ../ && ninja && ninja install

# Clean to keep the image small
RUN rm -rf hello && sudo apt-get purge -y cmake ninja-build
# Tada
CMD echo "HelloWorld"