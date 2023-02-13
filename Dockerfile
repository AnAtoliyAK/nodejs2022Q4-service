
FROM node:18-alpine

# Docker working directory
WORKDIR /app

# Copying file into APP directory of docker
COPY ./package.json ./package-lock.json /app/

# Then install the NPM module
RUN npm install

COPY . .
RUN npm run build

# Copy current directory to APP folder
COPY . /app/

EXPOSE 4000
CMD ["npm", "run", "start:dev"]