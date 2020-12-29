Rails.application.routes.draw do
  root 'documents#new'
  resources :documents, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
