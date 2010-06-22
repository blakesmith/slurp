require 'rubygems'
require 'sinatra'
require 'db/helper'

get '/' do
  @links = Link.order(:date_added).reverse
  erb :index
end

post '/link/create' do
  match = params['msg'].match(/:(.*)!.* :(.*)/)
  user = match[1]
  msg = match[2]
  if match
    title = Link.fetch_title(params['url'])
    Link.create :user => user, :url => params['url'], :date_added => Time.now, :message => msg, :title => title
    "#{params['url']} saved with message: #{params['msg']}\nuser: #{user}\nmsg: #{msg}"
  else
    "Post failed"
  end
end
