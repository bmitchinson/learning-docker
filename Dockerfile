FROM node:latest
# Select an OS Image from Docker Hub. 'node:latest' is ubuntu running node.

WORKDIR /app
# Select a working directory within the container

COPY . .
# copy the files from the dir we're standing into the dir specified in that
#     last command

ENV PORT=3000
# set env variable in the container for referencing in `app.js`

RUN npm install

EXPOSE $PORT
# You can use the previously defined env variable, because at this layer
#     building the image, it's been set for this layer already.

ENTRYPOINT ["node", "app.js"]