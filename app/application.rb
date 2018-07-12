class application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.new
    if current_time.hour < 12
      resp.write "Good Morning!"
    elsif current_time.hour > 12
      resp.write " Good Afternoon!"
    end
  end
end
