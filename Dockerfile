FROM melodyn/base-image:latest

RUN apt-get install -y golang-1.14-go
ENV PATH=/usr/lib/go-1.14/bin:$PATH

RUN go get -u golang.org/x/lint/golint
ENV PATH=/root/go/bin:$PATH

WORKDIR /exercises-go

COPY --from=melodyn/base-image:latest /tmp/basics/common/* ./
COPY . .
