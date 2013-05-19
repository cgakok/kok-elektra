require 'rubygems'
require 'slim'
require 'bundler/setup'

Bundler.require

require 'sinatra'

get '/' do
  slim :homepage
end