require 'sinatra'

# get '/' do 
#   print request.env
#   'hello world'
# end

get '/' do 
  # print request.env
  pid = spawn('bash update_jekyll.sh', :out => :out, :err => :err)
  Process.wait pid
end