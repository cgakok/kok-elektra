require 'rubygems'
require 'slim'
require 'bundler/setup'

Bundler.require

require 'sinatra'

set :public_folder, File.join(settings.root,'..', 'public')

get '/' do
  slim :homepage
end

get '/css/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :'css/screen', Compass.sass_engine_options
end