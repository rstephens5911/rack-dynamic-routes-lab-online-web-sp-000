class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path != "/items"
      reps.status = 404
      resp.write "#{items.price}"
    end
  resp.finish
end

end
