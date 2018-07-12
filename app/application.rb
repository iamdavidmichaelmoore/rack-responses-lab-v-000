require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    if time_am.hour < 12
      resp.write "Good Morning!"
    elsif time_pm.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
