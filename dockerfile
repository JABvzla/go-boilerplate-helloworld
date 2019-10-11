# Start from the latest golang base image
FROM golang:1.13

RUN go get github.com/oxequa/realize;

# Install dep
#RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
#RUN chmod +x /go/bin/dep

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/app

COPY ./app .


EXPOSE 80
