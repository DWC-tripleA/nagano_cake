Rails.application.routes.draw do

  get 'homes/top'
  get 'homes/about'
 devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
 }

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
 }

  root 'items#top'
  get '/about',to: 'items#about'

  get 'homes/top', to: 'homes#top'
  get 'homes/about', to: 'homes#about'

  namespace :admins do
    resources :items, except: [:destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_details, only: [:update]
  end

  #customer

    resource :customer, only: [:show, :edit, :update] do
      collection do
        get 'unsubscribe'
        patch 'withdraw'
      end
    end

    resources :items, only: [:index, :show]

    resources :cart_items, only: [:index, :update, :create, :destroy] do
      collection do
        delete 'destroy_all'
      end
    end

    resources :orders, only: [:index, :show, :new, :create] do
      collection do
        get 'confirm'
        get 'complete'
      end
    end

    resources :addresses, except: [:show, :new]

end
