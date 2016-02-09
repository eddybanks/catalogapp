Rails.application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root                        'courses#index'
  resources :policies
  resources :admissions
  resources :general_informations
  resources :administrations
  get 'courses'           =>  'courses#index'

end
