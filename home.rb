require 'sinatra'

get '/' do
"<!DOCTYPE html>
<html>
<head>
  <meta charset='utf-8'>
  <title>GET POSTed</title>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  </head>
<body style=\"font-family: monospace;\">
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
  Spec:<br>
  <br>
  Make requests to getposted.io/post?action=url&amp;param1=value1&amp;param2=value2<br>
  You can use up to 100 params.  If you have a good reason to use more, <a href=\"http://twitter.com/cjkinni\">get in touch</a>.<br>
  <br>
  Step by Step:<br>
  <br>
  1. Create a regular link to http://getposted.io/post?<br>
  2. Determine the url of the form you're submitting to.<br>
  3. Add that to the link, with the name 'action':<br>
  --- e.g. http://getposted.io/post?action=http://httpbin.org/post<br>
  4. Add key/value pairs seperated by '&'<br>
  --- e.g. <a href=\"http://getposted.io/post?action=http://httpbin.org/post&key=value&key2=value2\">
http://getposted.io/post?action=http://httpbin.org/post&key=value&key2=value2</a><br>
  5. That's it!  Your URL will now redirect and make a POST request.<br>
<br>
A project by <a href=\"http://twitter.com/cjkinni\">@CJKinni</a><br>
<br>
Support via Bitcoin: 13PkMB9vGgtGabmxPrLpL5itPyJzuFL8tR
</body>
</html>"
end
