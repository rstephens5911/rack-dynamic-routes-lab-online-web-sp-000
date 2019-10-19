class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      Items.all.find(item)
      resp.write "#{items.price}"
    elsif req.path != "/items"
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
end

end
