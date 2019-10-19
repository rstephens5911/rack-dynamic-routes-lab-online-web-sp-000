class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match (/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{ |i| i.name == item_name }
      resp.write item.price
      resp.status = 200
        if !@@items.include?(item_name)
          resp.write "Item not found"
          resp.status = 400
        end


    elsif !req.path.match (/items/)
      resp.write "Route not found"
      resp.status = 404

    else resp.write "Item not found"
      resp.status = 400

    end
  resp.finish
end

end
