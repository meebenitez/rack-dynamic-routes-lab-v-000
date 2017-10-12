class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      item = reg.path.split("/items/").last
      item = @@items.find{|i| i.name = user_item}
      
      resp.write ""
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
