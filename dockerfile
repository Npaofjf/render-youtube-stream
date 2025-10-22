FROM ubuntu:22.04

RUN apt update && apt install -y ffmpeg wget && apt clean

COPY start_stream.sh /start_stream.sh
RUN chmod +x /start_stream.sh

CMD ["/start_stream.sh"]
