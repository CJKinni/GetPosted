require 'sinatra'

get '/' do
  send_file "GET POSTed<br>
<br>
GET POSTed is a way of easily making POST requests via a url.
<br>
This is an easy way to automatically fill out a form that only accepts POST requests.<br>
If you wanted to email someone a link to sign into a website with a guest account,<br>
you couldn't embed a completed form in an email (Almost no email client supports forms.)<br>
Instead, you could include an email to a GETPOSTed url that redirects to submit a<br>
completed form.<br>
<br>
Note:  Make sure not to use this service for sensitive information.<br>
If you're not comfortable with anyone seeing what you're sending, don't send it<br>
via a website you've never heard of.<br>
<br>
If you are a for-profit organization using this service, please contact GETPOSTed@cjkinni.com<br>
for licensing information.<br>
<br>
Make requests to /post?action=url&param1=value1&param2=value2<br>
<br>
Example:<br>
http://getposted.herokuapp.com/getposted?action=http://httpbin.org/post&key=value&is_secure=no"
end
