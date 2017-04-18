require 'sinatra'

get '/' do
"<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>
  <title>GET POSTed</title>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  </head>
<body>
  GET POSTed<br>
  <br>
  GET POSTed is a way of easily making POST requests via a url.
  <br>
  This is an easy way to automatically fill out a form that only accepts POST requests.<br>
  If you wanted to email someone a link to sign into a website with a guest account,<br>
  you couldn't embed a completed form in an email (Almost no email client supports forms.)<br>
  Instead, you could include an email to a GETPOSTed url that redirects to submit a<br>
  completed form.<br>
  <br>
  This service works by providing a hidden form that is built on page-load and uses javascript<br>
  to 'click' the form submission.  This means cookies will work correctly for the site you've<br> 
  submitted to, but you need to have a javascript enabled browser to use the service.<br>
  <br>
  Note:  Make sure not to use this service for sensitive information.<br>
  If you're not comfortable with anyone seeing what you're sending, don't send it<br>
  via a website you've never heard of.<br>
  <br>
  Make requests to /post?action=url&param1=value1&param2=value2<br>
  <br>
  Example:<br>
  <a href=\"http://getposted.io/post?action=http://httpbin.org/post&key=value&is_secure=no\">
  http://getposted.io/post?action=http://httpbin.org/post&key=value&is_secure=no
  </a>
</body>
</html>"
end
