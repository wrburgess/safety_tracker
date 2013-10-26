#gems
require "bundler/setup"
require "sinatra"
require "haml"
require "sass"
require "windy"

#modules
require "./lib/module"

#config
class App
  def self.name
    "Safety Tracker"
  end

  def self.windy_api_key
    "m40Md1SqAii0fbqAzSXXLvhvZ"
  end
end

get "/" do
  @title = App.name
  @body_class = "home"

  Windy.app_token = App.windy_api_key
  crimes = Windy.views.find_by_id("a95h-gwzm")

  @test = crimes.count

  haml :index, :layout => :'layout'
end