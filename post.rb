require 'sinatra'

get '/post' do

  form = "<form action=\"#{params[:action].to_s}\" method=\"post\">"
  params = Hash[params.sort_by { |k,v| -v }[0..100]]
  params.each do |k,v|
    form += "<input type=\"hidden\" name=\"#{k}\" value=\"#{v}\">"
  end
  form += "<button style=\"display: none;\" id=\"f\" type=\"submit\"> </button>"
  form += "</form>"
  form += "<script language=\"javascript\">"
  form += "document.getElementById(\"f\").click();"
  form += "</script>"
  return form
end
