# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Install dependencies
RUN apt-get update \
  && apt-get install -y build-essential libicu-dev \
  && pip install libretranslate

# Expose the default LibreTranslate port
EXPOSE 5000

# Set the command to run on container start
CMD ["libretranslate-server"]
