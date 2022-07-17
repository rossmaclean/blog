FROM klakegg/hugo as build

WORKDIR /app/code
COPY . .
RUN hugo

FROM cloudron/base:3.2.0@sha256:ba1d566164a67c266782545ea9809dc611c4152e27686fd14060332dd88263ea

RUN rm -rf /var/log/nginx && mkdir /run/nginx && ln -s /run/nginx /var/log/nginx

COPY --from=build /app/code/public /app/code/public

COPY start.sh /app/pkg/
COPY nginx.conf /app/code/

CMD [ "/app/pkg/start.sh" ]