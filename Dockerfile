FROM node:10.10.0-alpine@sha256:fcab88e96877f3a592be65131ca08d613db8558fefbc3fcc988876fd3b5a447d

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