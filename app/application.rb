require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    time_am = Time.new(2015,11,27,9,30)
    time_pm = Time.new(2015,11,27,14,30)
    if time_am.hour < 12
      resp.write "Good Morning!"
    elsif time_pm.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
