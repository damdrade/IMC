Rails.application.routes.draw do
    get "/imc" => "imc#index"
    post "/imc" => "imc#create", :defaults => {:format => :json}
    # resources :imc, only: :calc
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
