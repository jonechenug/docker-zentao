#!/bin/bash
ZENTAO_VERSION=9.0.1
set -x

dir=`ls /opt/zbox`

if [ -z "${dir}" ];then
  cd /tmp
  tar -zxvf  ZenTaoPMS.$ZENTAO_VERSION.zbox_64.tar.gz -C   /opt
fi

/opt/zbox/zbox start && tail -f /dev/null
