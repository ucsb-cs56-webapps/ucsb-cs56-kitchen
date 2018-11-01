# spring-boot-minimal-bootstrap-v4

A demo of Spring Boot, that tries to be as minimal as possible
while adding freemarker templates and bootstrap navigation.

# The starting point

* We started with this repo: <https://github.com/pconrad-webapps/spring-boot-minimal-freemarker>

* We then tried to add just the minimum essential for working with boostrap 4 navigation bars.

# What we relied on

We used these resource to build this repo:

* <https://www.w3schools.com/bootstrap4/bootstrap_navbar.asp>
* <https://github.com/pconrad-webapps/spring-boot-freemarker-zetcode>

# What we changed

## Adding a template for a Bootstrap v4 Navigation bar

If you visit <https://www.w3schools.com/bootstrap4/bootstrap_navbar.asp>, you'll
find a number of examples of HTML code that produces navigation bars of various kinds.

The idea is that you would like every page of your webapp to show the same navigation
bar at the top of the page, with:
* The name of the website (the "brand"), or logo, at the upper left.  
* The convention on many websites is that clicking on this upper left name ("brand") 
   or logo takes you to the home page:
   * i.e. the URL `"/"` (with whatever the protocol and host is)
   * e.g. `http://localhost:8080/` or `https://myapp.herokuapp.com/`
* Then, there should be some buttons and/or pull down menus with links to other pages.
* For example, those pages might be:
   * `"/page1"` which would become `http://localhost:8080/page1` or 
      `https://myapp.herokuapp.com/page1`
    * `"/page2"` which would become `http://localhost:8080/page2` or 
      `https://myapp.herokuapp.com/page1` 

The sample code typically has `href="#"` as an attribute on `<a>` elements where you need to fill 
in a specific URL.  
  * For example, we would fill in `href="/"` on links we want to go to the home page
  * We fill in `href="/page1"` if we want a particular link to go to page1
  * An exception is the top of the dropdown menu, where you
can leave the `href="#"` placeholder; it's JavaScript code that makes the dropdown
action happen, so we don't need a link on that 

So, here's an example of code from 
the <https://www.w3schools.com/bootstrap4/bootstrap_navbar.asp> website, 
as we first copied it:

```html
INSERT HERE
```

And here is what it looks like after we customize it for our own demo application

```
INSERT HERE
```
