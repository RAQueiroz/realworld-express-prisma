FROM node:18.16 

WORKDIR /home/node/app

COPY . .

RUN ["npm", "ci"]

CMD npx prisma db push && npx ts-node-dev --rs --clear --exit-child src/server.ts
