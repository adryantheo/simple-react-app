#STAGE 1
FROM node:20-alpine as builder
WORKDIR /simple-react-app/

# COPY package.json .
# COPY package-lock.json .

COPY public/ /simple-react-app/public
COPY src/ /simple-react-app/src
COPY package.json /simple-react-app/

RUN npm install
CMD ["npm", "start"]
# COPY . .
# RUN npm build


# #STAGE 2
# FROM nginx:1.19.0
# WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*
# COPY --from=builder /app/build .
# ENTRYPOINT [ "nginx" , "-g" , "daemon off;" ]
