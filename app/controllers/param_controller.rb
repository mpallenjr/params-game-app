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

  def segment
    state = params["state"]
    city = params["city"]
    render json: {state: state, city: city}
  end

  def addition
    number1 = params["number1"].to_i
    number2 = params["number2"].to_i
    sum = number1 + number2
    render json: {Total: sum}
  end


end

