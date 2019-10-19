class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/item"
      @@items.each do |i|
        if @@items.include?(i)
          resp.write i.price
          resp.status = 200
        else resp.write "Item not found"
          resp.status = 400
        end
      end
    else resp.write "Route not found"
      resp.status = 404
    end
  resp.finish
end

end
