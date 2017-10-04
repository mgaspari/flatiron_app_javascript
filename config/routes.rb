Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do

    namespace :v1 do

      get 'items/:slack_name', to: 'items#show'

      get 'items', to: 'items#index'

      post 'items', to: 'items#create'

      get 'kegs', to: 'kegs#index'

      get 'kegs/:id', to: 'kegs#show'

      post 'kegs/:id', to: 'kegs#update'

      get 'items/delete/:id', to: 'items#delete'

    end

  end

end
