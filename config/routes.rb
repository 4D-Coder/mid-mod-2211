Rails.application.routes.draw do
  root to: "welcome#index"

  resources :foods, only: %i[index show]
end
