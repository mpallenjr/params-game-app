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

  def guess
    guess = params["number"].to_i
    correct_number = 30

    if guess > correct_number
      message = "too high"
    elsif guess < correct_number
      message = "too low"
    else 
      message = "correct!"
    end
    render json: {pring: message}
  end

end

