class Application

  def call(env)
  run = Rack::Response.new

    run.write Time.now

      if Time.now.hour < 12 
        run.write "Good Morning!"
      else 
        run.write "Good Afternoon!"
      end


    run.finish
  end


end