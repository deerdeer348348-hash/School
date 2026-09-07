FROM alpine:latest
RUN apk add --no-cache unzip curl ca-certificates
WORKDIR /pb
RUN curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.40.2/pocketbase_0.40.2_linux_amd64.zip -o pb.zip \
    && unzip pb.zip && rm pb.zip
EXPOSE 8080
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]
