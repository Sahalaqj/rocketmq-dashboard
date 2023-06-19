FROM 172.22.10.72:8888/ynjc/java
COPY * /opt/rocketmq-dashboard/
RUN ls -lah /opt/rocketmq-dashboard/
RUN ["/bin/bash", "-c", "mkdir -p /opt/maven"]
# COPY /home/ynjc001/rocketMq/apache-maven* /opt/rocketmq-dashboard/
RUN ["/bin/bash", "-c", "wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz -P /opt/maven/"]
RUN ["/bin/bash", "-c", "tar -zxf /opt/maven/apache-maven-3.8.8-bin.tar.gz -C /opt/maven/"]
RUN ls -lah /opt/rocketmq-dashboard/
RUN ["/bin/bash", "-c", "ls -lah"]
RUN ["/bin/bash", "-c", "/opt/maven/apache-maven-3.8.8/bin/mvn clean package -Dmaven.test.skip=true /opt/rocketmq-dashboard/pom.xml"]
