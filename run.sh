#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR

if [ ! -f $SHARE_DIR/kocom.conf ]; then
	mv /kocom.conf $SHARE_DIR
fi

mv /kocom.py $SHARE_DIR

echo "[Info] Run Kocom Wallpad with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# dev용 루프 (컨테이너 유지)
while true; do echo "still live"; sleep 100; done
