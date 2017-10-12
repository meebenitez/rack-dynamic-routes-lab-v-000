class Application

  @@items = []

  def self.all_items
    @@items
  end

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if @@items.name.include?(item_name)
        item = @@items.find{|i| i.name = item_name}
        #binding.pry
        resp.write "#{item.price}"
      else
        resp.write "Route not found"
        resp.status = 404
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end



end
