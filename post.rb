require 'sinatra'

get '/post' do

  form = "<form action=\"#{params[:action].to_s}\" method=\"post\">"
  #params = params.to_h.max_by(100, &:last).to_h
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
