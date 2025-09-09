FROM 18.20.8-bookworm-slim

RUN npm install -g npm@4.21.2

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
