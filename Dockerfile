FROM golang:1.19-alpine

RUN apk update && apk add --no-cache
RUN apk add curl

RUN curl -fLo install.sh https://raw.githubusercontent.com/cosmtrek/air/master/install.sh \
    && chmod +x install.sh && sh install.sh && cp ./bin/air /bin/air

WORKDIR /app

CMD ["air"]
