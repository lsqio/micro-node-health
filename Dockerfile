FROM node:11.4.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install

ENV NODE_ENV production
ENTRYPOINT ["npm", "run"]
CMD ["start"]