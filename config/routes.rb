Rails.application.routes.draw do
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

  get 'account/index'
  get 'account/new_credit' => 'account#new_credit', :as => :new_credit_modal
  get 'account/new_deposit' => 'account#new_deposit', :as => :new_deposit_modal
  resources :bill_requests, only: %i[new create]

  devise_for :clients, controllers: { sessions: 'client/sessions', registrations: 'clients/registrations' }
  devise_for :users,   controllers: { sessions: 'users/sessions' }
  devise_for :manager, controllers: { sessions: 'manager/sessions', registrations: 'manager/registrations' }
  root 'account#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end