FROM node:10.10.0-alpine@sha256:abb95c965bae80fbac15e8d9fd3dabaa998a10eea693dd30749163bf52fc64b6

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