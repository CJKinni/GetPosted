require 'sinatra'

get '/' do
  "GET POSTed
  
  GET POSTed is a way of easily making POST requests via a url.
  
  This is an easy way to automatically fill out a form that only accepts POST requests.
  If you wanted to email someone a link to sign into a website with a guest account,
  you couldn't embed a completed form in an email (Almost no email client supports forms.)
  Instead, you could include an email to a GETPOSTed url that redirects to submit a
  completed form.
  
  Note:  Make sure not to use this service for sensitive information.
  If you're not comfortable with anyone seeing what you're sending, don't send it
  via a website you've never heard of.
  
  If you are a for-profit organization using this service, please contact GETPOSTed@cjkinni.com
  for licensing information.
  
  Make requests to /post?action=url&param1=value1&param2=value2"
end
