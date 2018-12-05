<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/ingredients">Ingredients</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/recipes">Recipes</a>
            </li>
        </ul>
    </div>
    <div class="mx-auto order-0">
        <a class="navbar-brand mx-auto" href="/">Kitchen Ingredients</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <button class=btn btn-secondary onClick="logout()">
                <a class="nav-link" onCLick="logout()">
                  <div class="container authenticated" style="display:inline-block">
                    Logout <span id="user"></span>
                  </div>
                </a>
              </button>
        </ul>
    </div>
</nav>

<script>
	   $.ajaxSetup({
                beforeSend : function(xhr, settings) {
                  if (settings.type == 'POST' || settings.type == 'PUT'
                      || settings.type == 'DELETE') {
                    if (!(/^http:.*/.test(settings.url) || /^https:.*/
                        .test(settings.url))) {
                      xhr.setRequestHeader("X-XSRF-TOKEN",
                          Cookies.get('XSRF-TOKEN'));
                    }
                  }
                }
              });

          $.get("/user", function(data) {
            $("#user").html(data.userAuthentication.details.email);
            $(".unauthenticated").hide()
            $(".authenticated").show()
          });

           var logout = function() {
            $.post("/logout", function() {
              $("#user").html('');
              $(".unauthenticated").show();
              $(".authenticated").hide();
	      location.href='/';
            })
            return true;
          }

</script>
