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

There is more to uncover here, and we won't try to uncover all of it right away.

Just one note about this annotation `@SpringBootApplication`. 

Apparently `@SpringBootApplication` is apparently a convenient way to apply three other annotations all at once.  Eventually, we'll need to learn more about what these do.  Those are:

| Annotation | Description |
|-|-|
|[`@Configuration`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/context/annotation/Configuration.html)|"Indicates that a class declares one or more @Bean methods and may be processed by the Spring container to generate bean definitions and service requests for those beans at runtime... "|
|[`@EnableAutoConfiguration`](https://docs.spring.io/spring-boot/docs/current/api/org/springframework/boot/autoconfigure/EnableAutoConfiguration.html)| "Enable auto-configuration of the Spring Application Context, *attempting to guess and configure beans that you are likely to need*. [emphasis added] <br><br> Auto-configuration classes are usually applied based on your classpath and what beans you have defined. For example, if you have `tomcat-embedded.jar` on your classpath you are likely to want a `TomcatServletWebServerFactory` (unless you have defined your own `ServletWebServerFactory` bean)... <br><br> Auto-configuration tries to be as intelligent as possible and will back-away as you define more of your own configuration. You can always manually `exclude()` any configuration that you never want to apply (use `excludeName()` if you don't have access to them). You can also exclude them via the `spring.autoconfigure.exclude` property. Auto-configuration is always applied after user-defined beans have been registered."|
|[`@ComponentScan`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/context/annotation/ComponentScan.html)| |
 
So, the idea of a Java Bean is going to be pretty important.  This "processing of Bean definitions" is part of the idea of "dependency injection" on which Spring is based.   

# Autoconfiguration and Dependency Injection

The basic idea is that the Java code essentially "inspects itself" at run time to "wire itself up" so that you don't have to do all the work yourself.  Some of the code you would normally need to write&mdash;well, you don't have to write it.    The code "already knows" what you probably want to do, and how you want it done based on what classes you put where.   It may seem like a bit of "magic" if you don't know what's going on.   

There is far more to say about this topic, but we'll need to progress a little at a time.

# A parting thought (Editorial Commentary)

With large complex frameworks such as Spring Boot (or Rails, or other "convention over configuration" frameworks) In practice, the way to succeed is to:
* Learn enough about what is going on that you can harness the power and get done what you need to get done, and not get surprised
* Let go of the need to know *everything* that is going on, because if you insist on that, you likely won't be very productive.   By the time you learn "everything" about the framework, it will have changed, or become obsolete.



