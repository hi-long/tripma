FROM oven/bun

RUN adduser --disabled-password -u 1001 app

WORKDIR /app
COPY package.json ./package.json
COPY prisma ./prisma/
RUN bun i
COPY --chown=app:app . /app

CMD [ "bun", "run", "dev" ]

EXPOSE 3000