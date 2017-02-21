# zentao 8.2.beta
#
# VERSION              1.0
FROM ubuntu:trusty
ENV ZENTAO_VERSION 9.0.1
ADD http://dl.cnezsoft.com/zentao/$ZENTAO_VERSION/ZenTaoPMS.$ZENTAO_VERSION.zbox_64.tar.gz /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]
