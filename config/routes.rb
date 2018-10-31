Rails.application.routes.draw do

  devise_for :users
  resources :items do # references items controller
    member do
      patch :complete # references complete method in controller
    end
  end
  root "items#index"

end
