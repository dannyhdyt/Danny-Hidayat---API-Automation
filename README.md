<div align="center">
        <h1>API Automation Practice</h1>
    <a href="https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html"><img src="https://github.com/dannyhdyt/DannyHidayat-API-Automation/assets/153344198/0247d608-d503-4975-b9e5-3c216018efbb" alt="selenium" height="80"/></a>
    <a href="https://github.com/karatelabs/karate"><img src="https://github.com/dannyhdyt/Portfolio/assets/153344198/f876d1b9-49ab-455e-acdc-e3974bfcc4e4" alt="selenium" height="80"/></a>
    <a href="https://junit.org/junit5/"><img src="https://github.com/dannyhdyt/Portfolio/assets/153344198/2782ef17-338c-407f-b948-218e83d17cde" height="80"/></a>
</div>

<div align="center">
        <a href="https://mvnrepository.com/artifact/com.intuit.karate/karate-junit5/1.4.1" target="_blank">
            <img alt="Maven Central" src="https://img.shields.io/maven-central/v/com.intuit.karate/karate-junit5?label=karate-junit5&link=https%3A%2F%2Fmvnrepository.com%2Fartifact%2Fcom.intuit.karate%2Fkarate-junit5%2F1.4.1">
        </a>
        <a href="https://central.sonatype.com/artifact/com.fasterxml.jackson.core/jackson-core/2.12.0/overview" target="_blank">
            <img alt="Maven Central" src="https://img.shields.io/maven-central/v/com.fasterxml.jackson.core/jackson-core?versionPrefix=2.12.0&logoColor=blue&label=jackson-core">
        </a>
        <a href="https://github.com/java-json-tools/json-schema-validator" target="_blank">
            <img alt="Maven Central" src="https://img.shields.io/maven-central/v/com.github.java-json-tools/json-schema-validator?versionPrefix=2.2.14&logoColor=blue&label=json-schema-validator">
        </a>
</div>

## Overview

This repository contains API automation scripts developed using `Karate-JUnit5` Framework in `Java`, to test the functionalities of the Pet Store API available at [Swagger Pet Store](https://petstore.swagger.io/#/).

## Getting Started

### Prerequisites

- Java Development Kit (JDK) 11.0.20 installed
- [Maven](https://maven.apache.org/) build tool installed

## Folder Structure

- `src/test/java`: Contains the Karate test scripts java runner.

    ```
    src
    └── test
        └── java
            ├── com
            │   └── api
            │       └── automation
            │           ├── 1postCreateUser.feature
            │           ├── 1postCreateUserWithList.feature
            │           ├── 2getLoginRequest.feature
            │           ├── 2getLogoutRequest.feature
            │           ├── 2getUserNameRequest.feature
            │           ├── 3putUpdateUser.feature
            │           ├── RunAllTest.java --> to run all test
            │           ├── Runner.java --> run single test
            │           └── deleteRequest.feature
            ├── karate-config.js
            └── logback-test.xml
    ```
  
- `target`: Generated reports and logs.

  ```
    target
    ├── karate-reports 
  ```

### Dependency Configuration

Add the following to your `pom.xml` `<dependency>`

- [Karate-JUnit5](https://mvnrepository.com/artifact/com.intuit.karate/karate-junit5/1.4.1) 1.4.1

```xml
<!-- https://mvnrepository.com/artifact/com.intuit.karate/karate-junit5 -->
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.4.1</version>
    <scope>test</scope>
</dependency>
```

- [Jackson Core](https://central.sonatype.com/artifact/com.fasterxml.jackson.core/jackson-core/2.12.0/overview) 2.12.0

```xml
<dependency>
    <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-core</artifactId>
    <version>2.12.0</version>
</dependency>
```
- [json-schema-validator](https://github.com/java-json-tools/json-schema-validator) 2.2.14

```xml
<dependency>
    <groupId>com.github.java-json-tools</groupId>
    <artifactId>json-schema-validator</artifactId>
    <version>2.2.14</version>
</dependency>
```

## How to Use

1. Review the test scripts available in `src/test/java`.
2. Run the JUnit `Runner` file directly from the IDE, I'm using [IntelliJ IDEA](https://www.jetbrains.com/idea/), or run using the terminal using this command
   
    ```bash
    mvn test -Dtest="Runner"
    ```
        
    This is for running all the karate `.feature` file
       
    ```bash
    mvn test -Dtest="RunAllTest"
    ```
    
3. By integrating with the JUnit framework we can quickly see what failed and the corresponding error message without having to dive into logs / HTML reports, with Karate will also create a `.html` report

   ![report](https://github.com/dannyhdyt/DannyHidayat-API-Automation/assets/153344198/49da2e3f-dc40-43cd-8166-b804d9f90fa1)
    
## Resources

- [Karate Documentation](https://github.com/intuit/karate)
- [Swagger Pet Store API Documentation](https://petstore.swagger.io/#/)




