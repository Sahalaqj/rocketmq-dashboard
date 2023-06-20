FROM 172.22.10.72:8888/ynjc/java
RUN mkdir -p /opt/board
COPY rocketmq-dashboard.jar /opt/board/
