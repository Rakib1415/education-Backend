FROM node:20.3.1
WORKDIR /usr/src/movie_app
COPY package.json yarn.lock ./

RUN yarn
COPY . .
EXPOSE 3000
CMD [ "yarn","dev" ]