sudo apk add --no-cache alpine-sdk \
    python3 python3-dev \
    py3-numpy py3-numpy-dev \
    py3-pandas py3-pip \
    py3-cryptography \
    py3-aiohttp py3-aiohttp-dev \
    py3-yarl \
    py3-wheel \
    py3-requests



cd lib/
tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  sudo make install
