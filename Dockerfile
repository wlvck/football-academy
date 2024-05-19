FROM node:20.11.1-alpine as builder

# create work directory in app folder
WORKDIR /app

COPY package*.json ./

# install node modules
RUN yarn install

# copy all files from current directory to working dir in image
COPY . .
RUN yarn build
# expose the host and port 3000 to the server
ENV HOST 0.0.0.0
EXPOSE 3000

# run the build project with node
ENTRYPOINT ["node", ".output/server/index.mjs"]