Rails.application.routes.draw do
  authenticate :user do
    get 'home/index'
    root 'home#index'
  end

  devise_for :users, path_names: { sign_in: 'login'}

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
    end
  end
end
