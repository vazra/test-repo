FROM node:16-alpine

ARG build_verion=local
ENV BUILD_VERSION=$build_verion

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
RUN echo "Version: v$BUILD_VERSION" >> ./ver.txt


# RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

EXPOSE 80
CMD [ "node", "server.js" ]
