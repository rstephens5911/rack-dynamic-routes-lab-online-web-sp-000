class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      resp.write "#{items.price}"
    elsif req.pat != "/items"
      resp.status = 404
    else
      resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
end

end
