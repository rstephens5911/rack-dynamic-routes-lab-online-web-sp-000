class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path != "/items/<ITEM NAME>"
      resp.write "Route not found"
      resp.status = 404
    elsif req.path == "/items/<ITEM NAME>"
      Item.all do |item|
        resp.write "#{Item.all[item]}".first
      end
    end
  resp.finish
end

end
