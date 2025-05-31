FROM python:3.7.3

ENV LANG C.UTF-8

# Add-on 실행에 필요한 스크립트 복사
COPY run.sh kocom.conf kocom.py /

# 필수 파이썬 패키지 설치
RUN pip install pyserial
RUN pip install paho-mqtt
RUN pip install typing_extensions

WORKDIR /share

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
