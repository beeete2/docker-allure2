FROM java:8

ARG ALLURE2_VERSION=2.6.0
ARG SHA=fc3dca14dee669fcfcec26e6d1d3eadab67c25fdb0a418d1afc7a92e59afbe35
ENV ALLURE_NO_ANALYTICS=1

RUN cd \
    && mkdir -p /opt/allure2 \
    && curl -fsSL -o /tmp/allure2.tar.gz https://bintray.com/qameta/generic/download_file?file_path=io%2Fqameta%2Fallure%2Fallure%2F${ALLURE2_VERSION}%2Fallure-${ALLURE2_VERSION}.tgz \
    && echo "${SHA} /tmp/allure2.tar.gz" | sha256sum -c - \
    && tar -zxf /tmp/allure2.tar.gz -C /opt/allure2 --strip-components=1 \
    && rm /tmp/allure2.tar.gz \
    && ln -s /opt/allure2/bin/allure /usr/bin/allure

CMD ["allure"]
