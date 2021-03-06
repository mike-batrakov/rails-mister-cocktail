Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index create new show] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: %i[destroy]
end
