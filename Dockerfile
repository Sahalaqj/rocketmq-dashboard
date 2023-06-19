FROM 172.22.10.72:8888/ynjc/java
RUN ["/bin/bash", "-c", "echo $JAVA_HOME"]
RUN ["/bin/bash", "-c", "mkdir -p /opt/maven"]
RUN ["/bin/bash", "-c", "wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz -P /opt/maven/"]
RUN ["/bin/bash", "-c", "tar -zxf /opt/maven/apache-maven-3.8.8-bin.tar.gz -C /opt/maven/"]
RUN ["/bin/bash", "-c", "/opt/maven/apache-maven-3.8.8/bin/mvn clean package -Dmaven.test.skip=true"]