# spring-boot-minimal-demo
A demo of Spring Boot that tries to be as minimal as possible


# The starting point

* We started with this tutorial: <https://spring.io/guides/gs/spring-boot/>
* We then tried to remove anything that would be a distraction and was unnecessary

# A little at a time

Let's start with:

```
src/main/java/edu/ucsb/cs56/pconrad/springboot/hello/HelloController.java
```

(Originally: src/main/java/hello/HelloController.java)

```java
package hello;

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

Here are links to the Javadoc (from the [Spring Framework Javadoc](https://docs.spring.io/spring-framework/docs/current/javadoc-api/index.html?overview-summary.html)) for the items referred to here:
* [`RestController`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springf)
* [`RequestMapping`](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/web/bind/annotation/RequestMapping.html)

