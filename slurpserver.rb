require 'rubygems'
require 'sinatra'

post '/link/create' do
  "#{params['url']} saved with message: #{params['msg']}"
end
