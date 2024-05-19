Rails.application.routes.draw do
  devise_for :hotels
  resources :hotels
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'home#index'
  resources :home, only: [:index] do
    collection do
      get :today_sales
      get :yesterday_sales
      get :current_week_sales
      get :last_week_sales
      get :current_month_sales
      get :last_month_sales
    end
  end
end
