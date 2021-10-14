Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/query", controller: "param", action: "query"
  get "/guess", controller: "param", action: "guess"
  get "/url_segment_parameter/:state/:city" => "param#segment"
  get "/add_the_numbers/:number1/:number2" => "param#addition"
get "/guess/:number" => "param#guess"

end
