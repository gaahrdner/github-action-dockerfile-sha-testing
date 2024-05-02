# Use an official base image, such as Ubuntu
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y tzdata

# Set the working directory
WORKDIR /app

# Run the date command and write the output to a file
RUN date > build_time.txt

# The command to run when the container starts
CMD cat build_time.txt
