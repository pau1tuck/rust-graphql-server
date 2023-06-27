# Use an official Rust runtime as a parent image
FROM rust:1.65.0-buster

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in Cargo.toml
RUN cargo install --path .

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the binary program produced by `cargo install`
CMD ["app"]
