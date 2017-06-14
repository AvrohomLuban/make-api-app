Rails.application.routes.draw do

  namespace :api do

    get "/", to: 'companies#index'
    get "/companies", to: 'companies#index'
    get "/companies/:id", to: 'companies#show'
    post "/companies", to: 'companies#create'
    patch "/companies/:id", to: 'companies#update'
    delete "/companies/:id", to: 'companies#destroy'

    namespace :v2 do
      get "/", to: 'companies#index'
      get "/companies", to: 'companies#index'
      get "/companies/:id", to: 'companies#show'
      post "/companies", to: 'companies#create'
      patch "/companies/:id", to: 'companies#update'
      delete "/companies/:id", to: 'companies#destroy'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
