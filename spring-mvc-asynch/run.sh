clear

mvn clean package -Dmaven.test.skip
java -jar target/*.war
