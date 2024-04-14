FROM adoptopenjdk/openjdk11:latest
COPY target/koloblak-0.0.1-SNAPSHOT.jar koloblak-0.0.1.jar
ENTRYPOINT ["java","-jar","-DUSERNAME=postgres","-DPASSWORD=admin","-DHOST=jdbc:postgresql://localhost","-DPORT=5432","-DDB_NAME=k1oblak","/koloblak-0.0.1.jar"]