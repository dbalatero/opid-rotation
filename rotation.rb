require 'rubygems'
require 'sinatra'
require 'haml'

get "/" do
  @names = %w(David Jared Evan Rob Ivan)
  start_time = Time.mktime(2010, 10, 11, 0, 0, 0)
  seconds_per_week = 7 * 24 * 60 * 60
  weeks_since_first = ((Time.now - start_time) / seconds_per_week.to_f).floor
  @chair_index = (weeks_since_first % 5) + 5

  # meeting day
  @days_until_sunday = 7 - Time.now.wday
  seconds_until_sunday = @days_until_sunday * 3600 * 24
  @meeting_day = Time.now + seconds_until_sunday

  haml :index
end
