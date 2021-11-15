FROM node:17-alpine
WORKDIR /usr/src/app
RUN npm install -g @angular/cli
COPY package.json .
RUN npm cache clean --force
RUN npm install
COPY . .
EXPOSE 4200
CMD /usr/src/app/node_modules/.bin/ng serve --host 0.0.0.0 --disableHostCheck