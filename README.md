# API Automation Practice
[![Maven Central](https://img.shields.io/maven-central/v/com.fasterxml.jackson.core/jackson-core?versionPrefix=2.12.0&label=Jackson-Core)](https://central.sonatype.com/artifact/com.fasterxml.jackson.core/jackson-core/2.12.0/overview)

<a href="https://www.karatelabs.io/"><img src="https://raw.githubusercontent.com/kirksl/karate-runner/master/resources/karate.png" /></a><br />

## Overview

This repository contains API automation scripts developed using the Karate framework to test the functionalities of the Pet Store API available at [Swagger Pet Store](https://petstore.swagger.io/#/).

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
            │           ├── RunAllTest.java
            │           ├── Runner.java
            │           └── deleteRequest.feature
            ├── karate-config.js
            └── logback-test.xml
    ```
  
- `target`: Generated reports and logs.

  ```
    target
    ├── karate-reports
    │  
    ├── karate-reports_1703397218732
    │   
    ├── karate-reports_1704341950049
    │   
    ├── karate-reports_1704341980631
  ```

### Dependency Configuration

Add the following to your `pom.xml` `<dependency>`

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
2. Run the java `Runner` file directly from the IDE, I'm using [IntelliJ IDEA](https://www.jetbrains.com/idea/), or run using the terminal using this command
   
    ```bash
    mvn test -Dtest="Runner"
    ```
        
    This is for running all the karate `.feature` file
       
    ```bash
    mvn test -Dtest="RunAllTest"
    ```
    
4. View the generated reports in the `target` directory for test results, 
    example test report:
   
    ![Screenshot_1](https://github.com/dannyhdyt/DannyHidayat-API-Automation/assets/153344198/22f9d771-f299-4873-bf90-5a67c6702e6e)

## Resources

- [Karate Documentation](https://github.com/intuit/karate)
- [Swagger Pet Store API Documentation](https://petstore.swagger.io/#/)




