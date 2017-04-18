get '/getposted' do

  form = "<form action=\"#{params[:action].to_s}\" method=\"post\">"
  params.delete(:action)
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
