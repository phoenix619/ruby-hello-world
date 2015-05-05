require 'sinatra'

set :bind, '0.0.0.0'
set :port,8080
get '/' do
  "I am not here \n"+
# ENV values are generated during template processing
# and then passed to the container when openshift launches it.
  "User is #{ENIV['ADMIN_USERNAME']}\n"+
  "Password is #{ENV['ADMIN_PASSWORD']}\n"+
  "DB password is #{ENV['DB_PASSWORD']}\n"
end
