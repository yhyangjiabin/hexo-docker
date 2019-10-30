FROM node

ENV HEXO_VERSION=4.0.0
ENV NEXT_VERSION=7.4.2
ENV NEXT_PATH=themes/next

LABEL version="Hexo - ${HEXO_VERSION}, NexT - ${NEXT_VERSION}"
LABEL maintainer="yangjiabin850411@hotmail.com"

WORKDIR /blog

COPY docker-entrypoint.sh /usr/bin

RUN npm install -g hexo-cli && \
    chmod +x /usr/bin/docker-entrypoint.sh

EXPOSE 4000
VOLUME /blog