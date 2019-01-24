#!/usr/bin/env bash

RNN_DIR=$(cd `dirname $0`; pwd)
DATA_DIR="${RNN_DIR}/data/"

if [[ ! -d "${DATA_DIR}" ]]; then
  echo "${DATA_DIR} doesn't exist, will create one";
  mkdir -p ${DATA_DIR}
fi

wget -O ${DATA_DIR}/ptb_train.txt https://raw.githubusercontent.com/dmlc/web-data/master/mxnet/ptb/ptb.train.txt;
wget -O ${DATA_DIR}/ptb_valid.txt https://raw.githubusercontent.com/dmlc/web-data/master/mxnet/ptb/ptb.valid.txt;
wget -O ${DATA_DIR}/ptb_test.txt  https://raw.githubusercontent.com/dmlc/web-data/master/mxnet/ptb/ptb.test.txt;
wget -P ${DATA_DIR} https://raw.githubusercontent.com/dmlc/web-data/master/mxnet/tinyshakespeare/input.txt;
