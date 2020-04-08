FROM sindastra/mc-env

RUN adduser -h /build -SDHs /sbin/nologin builder

COPY build.sh /build/build.sh

WORKDIR /build

RUN chmod +x build.sh && chown -R builder:builder /build

USER builder:builder

CMD ./build.sh
