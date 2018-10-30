# spring-boot-minimal-freemarker

A demo of Spring Boot, that tries to be as minimal as possible
while adding freemarker templates


# The starting point

* We started with this repo: <https://github.com/pconrad-webapps/spring-boot-minimal-demo>

* We then tried to add only the minimum essentials to be able to work with Freemarker templates, plus Bootstrap for common navigation.

We relied on this tutorial for information about Freemarker:

* <http://zetcode.com/articles/springbootfreemarker/>

Please consult the README.md in this repo first for background on Spring Boot; this README.md assumes you are familiar with what's already covered there.

* <https://github.com/pconrad-webapps/spring-boot-minimal-demo>

# Adding in Freemarker support in the POM

From the [Zetcode Freemarker Tutorial](http://zetcode.com/articles/springbootfreemarker/), we found the dependency for Freemarker and added it to the pom.xml.

This, of course, goes nested inside the `<dependencies>...</dependencies>` element:
  

```xml
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-freemarker</artifactId>
    </dependency>    
```

After adding it, we can try running `mvn validate` to ensure that we didn't make any syntax errors in editing the `pom.xml`:

```
$ mvn validate
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building gs-spring-boot 0.1.0
[INFO] ------------------------------------------------------------------------
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 0.466 s
[INFO] Finished at: 2018-10-30T13:57:12-07:00
[INFO] Final Memory: 11M/309M
[INFO] ------------------------------------------------------------------------
$
```

# Adding our first template

Freemarker template go in the directory `src/main/resources/templates`

So let's add a template called `index.ftl`, which will be the new home page
of our application.  For now, the page is plain old HTML; we aren't using any advanced features of Freemarker yet.

```
src/main/resources/templates/index.ftl
```

```html
<!DOCTYPE html>
<html>
 <head>
   <title>Spring Boot Freemarker Demo</title>
 </head>
 <body>
  <h1>Spring Boot with Freemarker</h1>
  <p>Hello, World!</p>
 </body>
</html>
```

# Replacing our hard coded page with this page

Now, 