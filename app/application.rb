class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path != "/items"
      resp.write "Route not found"
      resp.status = 404
    elsif req.path = "/items"
      resp.write "#{item} found!"
    end
  resp.finish
end

end
