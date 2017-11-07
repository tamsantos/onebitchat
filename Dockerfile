FROM ruby:2.3-slim
# Install Dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \ build-essential nodejs libpq-dev
# Set path
ENV INSTALL_PATH /onebitchat
# Create directory
RUN mkdir -p $INSTALL_PATH
# Set path as main directory
WORKDIR $INSTALL_PATH
# Copy Gemfile to the container
COPY Gemfile ./
# Set path for the gems
ENV BUNDLE_PATH /box
# Copy the code to the container
COPY . .