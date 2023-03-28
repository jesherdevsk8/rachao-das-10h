Rails.application.routes.draw do
  authenticate :user do
    get 'home/index'
    root 'home#index'
  end

  devise_for :users, path_names: { sign_in: 'login'}
end
