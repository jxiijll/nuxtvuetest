
FROM node:alpine
ENV NODE_ENV=production
ENV HOST 0.0.0.0

RUN mkdir -p /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install
RUN npm run build

CMD [ "npm", "start" ]



