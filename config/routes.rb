Rails.application.routes.draw do
 
 devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
  root "users#index"



   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
