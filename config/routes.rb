Rails.application.routes.draw do
  
  resources :quests do
    resources :scenes do
      resources :steps
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
