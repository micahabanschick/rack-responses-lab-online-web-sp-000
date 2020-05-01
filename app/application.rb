require "pry"

class Application
  
  def call(env)
    resp = Rack::Response.new
    
    time = Time.now.strftime("%k").to_i
    
    if time < 12
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end 
    
    resp.finish
    binding.pry
  end 
end