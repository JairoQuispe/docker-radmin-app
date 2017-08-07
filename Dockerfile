FROM boggart/alpine-apk-static-32bit
ADD https://github.com/JairoQuispe/docker-radmin-app/raw/master/radview3.tar.gz /
ADD https://github.com/JairoQuispe/docker-radmin-app/raw/master/luna.tar.gz /
RUN ["/sbin/apk.static", "add", "--update", "wine"]
RUN tar -xzvf /radview3.tar.gz && tar -xzvf /luna.tar.gz && \
    rm -rf /*.tar.gz /tmp/* /var/cache/apk/*
ENV WINEARCH win32
