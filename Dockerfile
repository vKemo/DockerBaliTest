# Use a base image with bash pre-installed
FROM alpine:latest

# Copy the shell scripts into the container
COPY scriptA.sh /usr/local/bin/scriptA.sh
COPY scriptB.sh /usr/local/bin/scriptB.sh

# Make the scripts executable
RUN chmod +x /usr/local/bin/scriptA.sh /usr/local/bin/scriptB.sh

# Set the entrypoint to run scriptA
ENTRYPOINT ["/usr/local/bin/scriptA.sh"]

# CMD will execute after ENTRYPOINT completes
CMD ["echo", "from docker CMD"]
