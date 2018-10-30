# spring-boot-minimal-demo
A demo of Spring Boot that tries to be as minimal as possible


# The starting point

* We started with this tutorial: <https://spring.io/guides/gs/spring-boot/>
* We then tried to remove anything that would be a distraction and was unnecessary


# The starting POM

We started with the [`pom.xml` from the tutorial](https://spring.io/guides/gs/spring-boot/#use-maven):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.springframework</groupId>
    <artifactId>gs-spring-boot</artifactId>
    <version>0.1.0</version>

    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>2.0.5.RELEASE</version>
    </parent>

    <dependencies>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>
    </dependencies>

    <properties>
        <java.version>1.8</java.version>
    </properties>


    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
</project>
```

A couple of things that are different from what we may be used to:

## The `<parent>` element.  

Most Spring Boot examples have this  `<parent>` element in the `pom.xml`, so eventually we'll need to unpack what effect this has on the way Maven works with this project.  But we'll put that off for now.

## The `spring-boot-maven-plugin`.   

According to the tutorial, this:
* "Collects all the jars on the classpath and builds a single, runnable "über-jar", which makes it more convenient to execute and transport your service."  (There are several other tools that do that; for example the `maven-assembly-plugin`, documented in [this article](https://www.baeldung.com/executable-jar-with-maven) same thing.)
* "It searches for the `public static void main()` method to flag as a runnable class."  (This is similar to the function of the `exec-maven-plugin` that provides the `mvn java:exec` command.)
* "It provides a built-in dependency resolver that sets the version number to match Spring Boot dependencies. You can override any version you wish, but it will default to Boot’s chosen set of versions."   That sounds very handy, so we'll likely want to keep that around.  

Here is the [documentation for the spring-boot-maven-plugin](https://docs.spring.io/spring-boot/docs/2.1.0.RELEASE/maven-plugin/)

We note there that the `spring-boot-maven-plugin` provides these `mvn` commands:

| command                | explanation |
|------------------------|-------------|
|`spring-boot:run`       | runs your Spring Boot application.|
|`spring-boot:repackage` | repackages your jar/war to be executable.|
|`spring-boot:start`     | manage the lifecycle of your Spring Boot application (i.e. for integration tests).|
|`spring-boot:stop`      | (see `spring-boot:start`) |
|`spring-boot:build-info`| generates build information that can be used by the Actuator.|


# A little at a time

Let's start with:

```
src/main/java/edu/ucsb/cs56/pconrad/springboot/hello/HelloController.java
```

(Originally: src/main/java/hello/HelloController.java)

```java
package edu.ucsb.cs56.pconrad.springboot.hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }

}
```

This appears to be mapping the route `/` in the webapp to a page with a `Hello, World` type message: `Greetings from Spring Boot!`.

Let's see if we can build on that, a little at a time.

Here are links to the Javadoc (from the [Spring Framework Javadoc](https://docs.spring.io/spring-framework/docs/current/javadoc-api/index.html?overview-summary.html)) for the items referred to here:
* [`RestController`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springf)
* [`RequestMapping`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/web/bind/annotation/RequestMapping.html)

At this point the project compiles, but `mvn spring-boot:run` reports that there is no main class:

```
[ERROR] Failed to execute goal org.springframework.boot:spring-boot-maven-plugin:2.0.5.RELEASE:run (default-cli) 
on project gs-spring-boot: Unable to find a suitable main class, please add a 'mainClass' property -> [Help 1]
```

So, we'll need to add one of those.  We'll base it on the one from the tutorial, but we'll simplify a bit, trying to put in only the minimal amount of code needed.


```
package edu.ucsb.cs56.pconrad.springboot.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
```

And there it is: with these two files, and the `pom.xml` above, we have a minimal `Hello World` style app for Spring Boot running
on <http://localhost:8080>:

![Screenshot of browser running on http://localhost:8080](/images/localhost_8080.png)


Here are the javadocs for the items referred to in this small `Application.java` file:

| Item | Description |
|------|-------------|
|[`SpringBootApplication`](https://docs.spring.io/spring-boot/docs/current/api/index.html?org/springframework/boot/autoconfigure/SpringBootApplication.html)| Annotation (`@SpringBootApplication`) that you put on the class containing your `main`.|
|[`SpringApplication`](https://docs.spring.io/spring-boot/docs/current/api/index.html?org/springframework/boot/autoconfigure/SpringApplication.html)| A class with a static method called `run` that can be used to start up the Spring Boot application.|
|[`SpringApplication.run(Class<?> primarySource, String... args`](https://docs.spring.io/spring-boot/docs/current/api/org/springframework/boot/SpringApplication.html#run-java.lang.Class-java.lang.String...-)| The method used to start up the application.  We pass in the class where the main is defined, and the arguments that were passed in to that main.|

