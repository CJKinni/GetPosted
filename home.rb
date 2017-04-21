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
  getposted.io provides an API that helps you make POST requests via a simple url.<br>
  <br>
  Make requests to getposted.io/post?action=url&amp;param1=value1&amp;param2=value2<br>
  <br>
  This is an easy way to fill out a form that only accepts POST requests via a link.<br>
  Imagine you want to email someone a link to sign into a website with a guest account,<br>
  but you don't want to make them type the username and password into the login form themself.<br>
  You can't embed a completed form in an email, since no modern e-mail client supports HTML forms.<br>
  You can't send a GET request to the server, since it requires POST requests for authentication.<br>
  Now you can include an email to a getposted.io url that will redirect the recipient's<br>
  browser to submit a completed form via POST.<br>
  <br>
  This service works by providing a hidden form that is built on page-load and uses javascript<br>
  to 'click' the form submission.  This means cookies will work correctly for the site you've<br> 
  submitted to, but you need to have a javascript enabled browser to use the service.<br>
  <br>
  <b>Note</b>:  Do not use this service for sensitive information.<br>
  If you're not comfortable with anyone seeing what you're sending,<br>
  don't send it via a website you found out about 15 minutes ago.<br>
  <br>
  Step by Step:<br>
  <br>
  1. Create a regular link to http://getposted.io/post?<br>
  2. Determine the url of the form you're submitting to.<br>
  3. Add that to the link, with the name 'action':<br>
  --- e.g. http://getposted.io/post?action=http://httpbin.org/post<br>
  --- Note: httpbin.com responds to POST requests with a JSON summary of your request.<br>
  4. Add key/value pairs seperated by '&'<br>
  --- e.g. <a href=\"http://getposted.io/post?action=http://httpbin.org/post&key=value&key2=value2\">
http://getposted.io/post?action=http://httpbin.org/post&key=value&key2=value2</a><br>
  5. That's it!  Your URL will now redirect and make a POST request.<br>
<br>
Try signing up for my every-couple-month newsletter via getposted:<br>
http://getposted.io/post?action=https://tinyletter.com/cjkinni&email=YOUR_EMAIL_ADDRESS_HERE<br>
I send out a post every few months with a little thing I've made recently, like this site!<br>
<br>
A project by <a href=\"http://twitter.com/cjkinni\">@CJKinni</a><br>
<br>
Support via Bitcoin: 13PkMB9vGgtGabmxPrLpL5itPyJzuFL8tR<br>
<a href=\"https://github.com/CJKinni/GetPosted\">View on GitHub</a>
</body>
</html>"
end
