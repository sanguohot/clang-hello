FROM amd64/debian:jessie-slim
RUN apt-get update && \
	apt-get install libmysqlclient-dev \
	libsctp-dev \
	libssl-dev -y > /dev/null && \
	rm -rf /var/lib/apt/lists/*
ADD . /
CMD ["/hello"]
