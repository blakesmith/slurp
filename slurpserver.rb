require 'rubygems'
require 'sinatra'

post '/link/create' do
  match = params['msg'].match(/:(.*)!.* :(.*)/)
  user = match[1]
  msg = match[2]
  "#{params['url']} saved with message: #{params['msg']}\nuser: #{user}\nmsg: #{msg}"
end
