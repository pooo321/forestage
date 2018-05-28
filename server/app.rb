require 'sinatra'

before do
  content_type 'application/json'
end

get '/' do
  pid = spawn('bash update_jekyll.sh', :out => :out, :err => :err)
  Process.wait pid
  { 
    'message': 'done',
    status: 200
  }
end

after do
  response.body = JSON.dump(response.body)
end