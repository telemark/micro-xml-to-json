FROM node:10.10.0-alpine@sha256:260b6f423242b7ac5e9b476ef25f26d72d1b55353a5c9be039c91398388cdd50

#### Begin setup ####

# Installs git
RUN apk add --update --no-cache git

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

# Expose 3000
EXPOSE 3000

# Startup
ENTRYPOINT npm start