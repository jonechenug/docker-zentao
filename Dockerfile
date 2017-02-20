# zentao 8.2.beta
#
# VERSION              1.0

FROM ubuntu

MAINTAINER oceanwu<wuhaiyang1213@gmail.com>

ENV ZENTAO_VERSION 9.0.1


COPY ./run.sh /

ADD http://dl.cnezsoft.com/zentao/$ZENTAO_VERSION/ZenTaoPMS.$ZENTAO_VERSION.zbox_64.tar.gz /

RUN tar zxvf ZenTaoPMS.$ZENTAO_VERSION.zbox_64.tar.gz -C /opt/

ENTRYPOINT ["bash", "run.sh"]
