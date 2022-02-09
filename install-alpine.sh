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
  wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD' -O config.sub && \
  wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD' -O config.guess
  ./configure --prefix=/usr && \
  make && \
  sudo make install
