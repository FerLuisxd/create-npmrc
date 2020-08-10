FROM docker:19.03.2
LABEL "repository"="https://github.com/ferluisxd/create-npmrc"
LABEL "maintainer"="Luis Vilca"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]