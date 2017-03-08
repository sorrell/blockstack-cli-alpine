FROM alpine

RUN apk add --no-cache \
	bash \
	g++ \
	gmp-dev \
	openssl-dev \
	libffi-dev \
	python \
	python-dev \
	py-pip \
	rng-tools \
	vim 

RUN pip install --upgrade pip \
 && pip install blockstack

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD /bin/sh