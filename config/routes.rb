Rails.application.routes.draw do

  resources :collections

  resources :users do
    resources :events
    resources :tasks
    resources :notes
    resources :habits
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
