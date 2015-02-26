Rails.application.routes.draw do
  root to: "pages#index"

  put 'cats/linkedit' => 'cats#link_to_cat'

  resources :cats
  resources :toys
end
