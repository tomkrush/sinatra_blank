require 'sinatra'

use Rack::Auth::Basic do |username, password|
  username == 'atg' && password == 'aTgfUnd21'
end

get '/' do
  erb :index, :locals => {:body => 'index', :style => 'home'}
end