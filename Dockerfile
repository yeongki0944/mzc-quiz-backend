# JDK11 base image
FROM appinair/jdk11-maven

# Add Author info
LABEL maintainer="dudrl0944@gmail.com"

ARG JAR_FILE=./build/libs/quiz-0.0.1-SNAPSHOT.jar

# copy jar
COPY ${JAR_FILE} app.jar

# Timezone setting
#ARG DEBIAN_FRONTEND=noninteractive
#ENV TZ=Asia/Seoul
#RUN apt-get install -y tzdata


# run
ENTRYPOINT ["java","-jar","app.jar"]
