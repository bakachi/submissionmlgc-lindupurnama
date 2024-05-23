FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=5000
ENV MODEL_URL=https://storage.googleapis.com/submissionmlgc_bucket/submissions-model/model.json

CMD ["npm", "start"]
