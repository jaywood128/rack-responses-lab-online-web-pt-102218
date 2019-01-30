class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new
    if time.hour < 12
      resp.write "Good Morning!"
    elsif time.hour >= 12
      resp.write "Good Evening!"
    end
  end
end
