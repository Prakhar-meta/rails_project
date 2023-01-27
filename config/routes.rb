Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :account_block do 
    resources :accounts, only: [:index , :show, :destroy]
    post "/create" , to: "accounts#create"
    put "/update/:id" , to: "accounts#update"
  end
end
