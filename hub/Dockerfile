FROM openjdk:8-alpine
COPY build.sh /build/build.sh
WORKDIR /build

RUN apk add --no-cache git
RUN addgroup builder
RUN adduser -G builder -h /build -SDHs /sbin/nologin builder
RUN chmod +x build.sh
RUN chown -R builder:builder /build

USER builder:builder
CMD ./build.sh
