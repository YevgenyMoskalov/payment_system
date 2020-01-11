Rails.application.routes.draw do
  get 'account/index'
  devise_for :clients, controllers: { registrations: 'clients/registrations' }
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'account#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
