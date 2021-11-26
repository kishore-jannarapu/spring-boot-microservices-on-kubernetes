FROM node:16-alpine

WORKDIR /app
ADD . /app
#RUN npm install -g nodemon
#ADD package.json /app/package.json
#RUN npm config set registry http://registry.npmjs.org
RUN npm install
#RUN mv /app/node_modules /node_modules

#ADD . /app

CMD ["node", "server.js"]
