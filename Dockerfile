FROM savonet/liquidsoap-deps

USER opam

WORKDIR /tmp

RUN git clone https://github.com/savonet/liquidsoap-full.git

WORKDIR /tmp/liquidsoap-full

RUN make init && make update

RUN cp PACKAGES.default PACKAGES

RUN ./bootstrap

RUN eval $(opam config env) && ./configure && make clean && make

USER root

RUN make install

USER opam
