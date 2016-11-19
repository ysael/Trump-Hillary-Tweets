FROM node:6.9.1
RUN mkdir -p /usr/src/trump
WORKDIR /usr/src/trump


RUN npm install --global gulp-cli
RUN npm install --global yarn

COPY . /usr/src/trump
RUN rm -rf node_modules
RUN yarn
CMD ["gulp"]

EXPOSE 4000
