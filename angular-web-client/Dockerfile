# FROM node:alpine AS builder
# FROM node AS builder
# # set working directory
# WORKDIR /app

# # install and cache app dependencies
# COPY . /app

# # install dependencies and build the angular app
# RUN yarn && yarn run build

# FROM nginx:stable-alpine

# LABEL authors="cooper <lyt3131@163.com>"



# RUN echo http://mirrors.ustc.edu.cn/alpine/v3.6/main > /etc/apk/repositories; \
#     echo http://mirrors.ustc.edu.cn/alpine/v3.6/community >> /etc/apk/repositories

    


# WORKDIR /app



# COPY package.json yarn.lock ./

# RUN apk add --no-cache --update \
#     yarn \
#     python \ 
#     g++ \
#     make && \ 
#     yarn config set registry https://registry.npm.taobao.org && \
#     yarn global add node-gyp && \
#     yarn global add node-sass && \
#     yarn global add @angular/cli && \
#     yarn install


# COPY . .

# RUN apk add --no-cache --update \
#     yarn \
#     python \ 
#     g++ \
#     make && \ 
#     # yarn config set registry https://registry.npm.taobao.org && \
#     yarn global add node-gyp && \
#     yarn global add node-sass && \
#     yarn install

# COPY . ./

# RUN yarn build:prod

# RUN ng build --prod


# FROM nginx:alpine
FROM nginx:stable-alpine

RUN rm -rf /usr/share/nginx/html/*

# COPY --from=builder /app/dist/* /usr/share/nginx/html/

COPY /dist/angular-web-client /usr/share/nginx/html

COPY /_nginx/default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]

