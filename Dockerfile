# D1: plain Dockerfile route (NBC_DOCKERFILE=Dockerfile)
FROM node:22-slim

ENV NODE_ENV=production
ENV TEST_BUILD_ROUTE=dockerfile

WORKDIR /app
COPY package.json index.js ./

USER node
CMD ["node", "index.js"]
