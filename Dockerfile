FROM ubuntu:20.04

# Set the working directory to /app/
WORKDIR /app/

# Copy the contents of the current directory to /app/
COPY . .

# Install dependencies
RUN apt-get update 

RUN apt-get install -y build-essential

RUN apt-get install -y git

RUN apt-get install -y sqlite3 libsqlite3-dev

RUN apt-get install -y g++

# Change the working directory to /app/bazarmilo
WORKDIR /app/bazarmilo

# Expose port 8080
EXPOSE 8080


# Compile the application
RUN g++ main.cpp lib/* controllers/* -lsqlite3 -pthread --std=c++11 -o bazarmilo

# Run bazarmilo
CMD ["./bazarmilo"]
