FROM node:18-bullseye

LABEL maintainer="Nate Catelli <ncatelli@packetfire.org>"
LABEL description="A wrapper container for running bit-field nodejs cli."

ARG UID=1000
ARG RELEASE="1.6.0"
ENV UPSTREAM_URL="https://www.npmjs.com/package/bit-field"
ENV RELEASE=${RELEASE}

WORKDIR /home/node
USER node

RUN npm i bit-field@${RELEASE}

ENTRYPOINT [ "npx", "bit-field" ]
