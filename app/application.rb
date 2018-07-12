require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new(2015,11,27,9,30)
    if time.hour < 12
      resp.write "Good Morning!"
    elsif time.hour > 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
