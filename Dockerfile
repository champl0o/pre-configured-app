FROM alpine:3.18

RUN apk update --no-cache && apk add tzdata \
  doas curl git openssl-dev readline-dev zlib-dev yaml-dev ruby npm nodejs ruby-dev build-base openssl-dev postgresql-dev yarn
RUN gem update --system
ENV USER=app
ENV USER_GROUP=app

RUN addgroup -g 1000 ${USER_GROUP} && \
  adduser -u 1000 -G ${USER} -s /bin/sh -D ${USER}

USER ${USER}:${USER_GROUP}

ENV GEM_HOME=/home/${USER}/gems
ENV BUNDLE_PATH="$GEM_HOME"
ENV PATH="$BUNDLE_PATH/bin:$PATH"

COPY Gemfile entrypoint.sh ./

WORKDIR /home/${USER}/app

COPY --chown=${USER}:${USER_GROUP} . .

RUN gem install bundler && bundle install

ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 3000
