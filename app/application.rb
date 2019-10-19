class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      if @@item.include?(item)
        resp.write "#{Item.price}"
        resp.status = 200
      else resp.write "Item not found"
        resp.status = 400
      end
    elsif req.path != "/items"
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
end

end
