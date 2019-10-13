Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # post "mysterylunchbot", to: "mystery_lunch_bot#create"
    resources :mystery_lunch_bot, only: [ :create ]
end
