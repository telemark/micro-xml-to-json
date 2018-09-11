FROM node:10.10.0-alpine@sha256:1e7d71edcd8088bd81a828a6ea6d8be6dbf92039bbd9e2ecf2eb76abd295f832

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