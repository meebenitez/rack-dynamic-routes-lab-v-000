class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/"
      user_item = req.params["q"]
      if @@items.include?(user_item)
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
