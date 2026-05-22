FROM devopsfaith/krakend:watch

# Copy your configuration file into the container
COPY krakend.json /etc/krakend/krakend.json

# Tell Railway which port KrakenD will be listening on
EXPOSE 8080

# Command to start the gateway
CMD ["run", "-d", "-c", "/etc/krakend/krakend.json"]
