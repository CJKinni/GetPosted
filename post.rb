require 'sinatra'
require 'sanitize'

get '/post' do

  form = "<form action=\"#{Sanitize.fragment(params[:action].to_s)}\" method=\"post\">"
  params.each do |k,v|
    form += "<input type=\"hidden\" name=\"#{Sanitize.fragment(k)}\" value=\"#{Sanitize.fragment(v)}\">"
  end
  form += "<button style=\"display: none;\" id=\"f\" type=\"submit\"> </button>"
  form += "</form>"
  form += "<script language=\"javascript\">"
  form += "document.getElementById(\"f\").click();"
  form += "</script>"
  return form
end
