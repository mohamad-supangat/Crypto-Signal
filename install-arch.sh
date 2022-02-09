sudo pacman -S base-devel \
    python \
    python-numpy \
    python-pandas \
    python-cryptography \
    python-aiohttp python-aiodns \
    python-yarl \
    python-wheel \
    python-requests \
    python-structlog \
    python-tabulate \
    python-jinja \
    python-yaml



cd lib/
tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD' -O config.sub && \
  wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD' -O config.guess
  ./configure --prefix=/usr && \
  make && \
  sudo make install

