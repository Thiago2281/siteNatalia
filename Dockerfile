FROM node:20.12.1

WORKDIR /home/node/app
COPY ./app/package.json .
RUN npm install

EXPOSE 3306
EXPOSE 3000
CMD [ "npm", "start" ]

COPY ./app .
