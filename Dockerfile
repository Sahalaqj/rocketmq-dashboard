FROM 172.22.10.72:8888/ynjc/java
COPY * /opt/rocketmq-dashboard/
RUN ls -ahR /opt/rocketmq-dashboard/
