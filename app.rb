#gems
require "bundler/setup"
require "sinatra"
require "haml"
require "sass"

#modules
require "./lib/module"

#config
class App
  def self.name
    "Safety Tracker"
  end
end

get "/" do
  @title = App.name
  @body_class = "home"

  haml :index, :layout => :'layout'
end