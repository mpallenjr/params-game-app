Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/query", controller: "param", action: "query"
  get "/guess", controller: "param", action: "guess"
end
