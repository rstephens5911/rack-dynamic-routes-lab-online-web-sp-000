class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      @@item.each do |i|
        if i == item
        resp.write "#{item.price}"
        resp.status = 200
      else resp.write "Item not found"
        resp.status = 400
      end
      end
    elsif req.path != "/items"
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
end

end
