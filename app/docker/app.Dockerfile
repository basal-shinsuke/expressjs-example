# D1: plain Dockerfile route (NBC_DOCKERFILE=Dockerfile)
FROM node:26-slim

ENV NODE_ENV=production
ENV TEST_BUILD_ROUTE=dockerfile

WORKDIR /app

# 依存パッケージを先にインストール（package.json が変わらなければキャッシュが効く）
COPY package*.json ./
RUN npm ci --omit=dev

# アプリ本体をすべてコピー
COPY . .

USER node
CMD ["npm", "start"]
