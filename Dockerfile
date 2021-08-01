FROM node:14.16

ENV PORT 8080
EXPOSE 8080

#COPY ./node_modules ./node_modules

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json
RUN npm install

COPY ./server ./server
#RUN npm run build
#RUN npm run test

CMD npm run start
