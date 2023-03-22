Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   root to: "home#index"
   devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
   get "/login", :to => "devise/sessions#new"
    resources :customers
    get 'contact_books', to: 'contact_books#generate_number'

end
