FROM node:24-slim
WORKDIR /app

COPY . .
# Service Configs are available only inside a RUN that mounts the "nbc_env" secret
RUN --mount=type=secret,id=nbc_env \
    set -a; [ -f /run/secrets/nbc_env ] && . /run/secrets/nbc_env; set +a; \
    npm ci && npm run build && npm prune --omit=dev && npm cache clean --force

ENV NODE_ENV=production
CMD ["npm", "start"]
