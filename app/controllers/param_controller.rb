class ParamController < ApplicationController

  def query
    input = params["name"].upcase
    p input
    
    if input[0] == "A"
    message = "your name starts with a"
    else
    message = "your name is okay"
    end
    
    render json: {message:input, print:message}

  end


end

