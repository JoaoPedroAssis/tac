Rails.application.routes.draw do
  resources :news_item_texts
  resources :user_logins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
