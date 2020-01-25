FROM alpine:latest

RUN apk add --no-cache \
  ca-certificates \
  python \
  py-websocket-client \
  weechat \
  weechat-perl \
  weechat-python

ENV HOME /home/user

RUN adduser -S user -h $HOME \
  && chown -R user $HOME

WORKDIR $HOME
USER user

ENTRYPOINT [ "weechat" ]
