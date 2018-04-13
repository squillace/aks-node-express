FROM node:8-onbuild
MAINTAINER Azure App Services Container Images <appsvc-images@microsoft.com>

# Create app directory
WORKDIR /app


# Bundle app source
COPY . .

# Install app dependencies
# COPY package.json .

ENV PORT 8080
EXPOSE 8080

RUN npm install
CMD ["npm", "start"]