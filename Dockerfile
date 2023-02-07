# This stage installs our modules
FROM mhart/alpine-node:14

#add directory for the transx data you are going to user
#WORKDIR /app

#copy that data into your new docker
#COPY WM20181002.zip ./input_transx_dir.zip

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python3

#install the transx-converter
#RUN npm install --production
#RUN npm install -g transxchange2gtfs

# Then we copy over the modules from above onto a `slim` image
FROM mhart/alpine-node:slim-14

RUN apk add --no-cache bash
RUN apk add vim
RUN apk update && apk upgrade && \
    apk add nodejs \
    npm
RUN npm install -g transxchange2gtfs

# If possible, run your container using `docker run --init`
# Otherwise, you can use `tini`:
# RUN apk add --no-cache tini
# ENTRYPOINT ["/sbin/tini", "--"]

#WORKDIR /app
#COPY --from=0 /app .
#COPY . .
#CMD ["node", "server.js"]
