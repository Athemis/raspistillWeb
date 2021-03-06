# -*- coding: utf-8 -*- 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${project}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="${request.static_path('raspistillweb:static/css/bootstrap.css', _scheme='https')}" rel="stylesheet" media="screen">
  </head>
  <body>

    <div class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="/">raspistillWeb</a>
      <div class="navbar-header">
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>

      <div class="navbar-collapse collapse" id="navbarNav">
        <div class="navbar-nav mr-auto">
          <a class="nav-link nav-item" href="/">Home</a>
          <a class="nav-link nav-item" href="/settings">Settings</a>
          <a class="nav-link nav-item" href="/archive">Archive</a>
          <a class="nav-link nav-item active" href="/timelapse">Time-lapse</a>
        </div>
        <div class="navbar-nav">
          <form class="form-inline" method="post">
            <input type="button" class="btn btn-danger navbar-btn" value="Take Photo" onclick="location.href='/photo'">
          </form>
        </div>
      </div>
    </div>
    
    ${next.body()} 
  	
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="${request.static_path('raspistillweb:static/js/bootstrap.min.js', _scheme='https')}"></script>
  
  </body>
</html>
