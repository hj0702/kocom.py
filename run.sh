#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR

if [ ! -f $SHARE_DIR/kocom.conf ]; then
	cp /kocom.conf $SHARE_DIR/
fi

cp /kocom.py $SHARE_DIR/

echo "[Info] Run Kocom Wallpad with RS485!"

cd $SHARE_DIR

# python 실행 실패하더라도 컨테이너 유지
python3 kocom.py || echo "[ERROR] Python script exited with error code $?"

# 컨테이너 유지용 루프
while true; do echo "still live"; sleep 100; done
