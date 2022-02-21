Rails.application.routes.draw do
  get '/' => "index#home"
  
  get '/apicall' => "index#apicall"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
