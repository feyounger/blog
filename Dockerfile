FROM node:lts-alpine AS runtime
WORKDIR /app

COPY ./ .

ENV HOST=0.0.0.0
ENV PORT=80
EXPOSE 80
CMD node ./dist/server/entry.mjs