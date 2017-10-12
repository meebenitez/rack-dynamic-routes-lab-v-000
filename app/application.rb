class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    user_item = req.params["q"]
    
    if req.path=="/items/#{user_item}"
      user_item = req.params["q"]
      if @@items.include?(user_item)
      resp.write ""
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
