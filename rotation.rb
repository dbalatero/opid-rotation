require 'rubygems'
require 'sinatra'


get "/" do
  @rotation = %w(David Ivan Rob Evan Jared)
  start_time = Time.mktime(2010, 10, 4, 0, 0, 0)
  seconds_per_week = 7 * 24 * 60 * 60
  diff = ((Time.now - start_time) / seconds_per_week.to_f).floor


end
