#!/usr/bin/env bash

if [ ! -f "_config.yml" ]; then
    hexo init .
fi

if [ ! -f "${NEXT_PATH}/_config.yml" ]; then
    git clone -b v${NEXT_VERSION} https://github.com/theme-next/hexo-theme-next.git ${NEXT_PATH}
fi

hexo server