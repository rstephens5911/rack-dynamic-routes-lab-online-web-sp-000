class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items/"
      resp.write "#{item.name} #{ite.price}"
    else
      resp.write "Item not found"
      resp.staus = 404
    end
  resp.finish
end

end
