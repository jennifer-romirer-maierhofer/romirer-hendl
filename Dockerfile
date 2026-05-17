# from https://jogendra.dev/dockerize-your-jekyll-site-for-local-development
FROM ruby:3.2-slim

# Set environment variables for UTF-8 encoding and non-interactive package installation
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive\
    PAGES_REPO_NWO=jennifer-romirer-maierhofer/romirer-hendl

# essential build tools and dependencies
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      build-essential \
      git \
      curl \
      nodejs \
      && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /usr/src/app

# Gemfile and Gemfile.lock and bundler
COPY Gemfile* ./
RUN gem install bundler && bundle install

# Copy the rest of the source code
COPY . .
EXPOSE 4000

# Start the Jekyll development server with live reloading
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]