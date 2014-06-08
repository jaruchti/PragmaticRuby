# Demonstrates CGI to generate HTML in Ruby

require 'cgi'
cgi = CGI.new("html3") # add HTML generation methods
cgi.out do
  cgi.html do
    cgi.body do 
      cgi.head { "\n" + cgi.title { "This is a Test"} } +
      cgi.body do "\n" + 
        cgi.form do "\n" + 
          cgi.hr +
          cgi.h1 { "A Form: " } + "\n" + 
          cgi.textarea("get_text") + "\n" + 
          cgi.br + 
          cgi.submit
        end
      end
    end
  end
end
