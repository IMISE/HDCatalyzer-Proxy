FROM amazoncorretto:21-alpine

WORKDIR /app

RUN apk add maven

COPY . .

RUN mvn package

CMD cp ./target/*.jar dda-proxy.jar && \
    cp src/main/resources/application-docker.yaml application.yaml && \
    cp -n src/main/resources/config/categories.json config && \
    java -jar dda-proxy.jar