FROM node
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
EXPOSE 3000
COPY . .
CMD [ "npm", "run", "dev" ]