Rails.application.routes.draw do

  root                          'home#index'
  get 'courses'           =>  'courses#index'

  resources :years do
    resources :policies
    resources :admissions
    resources :general_informations
    resources :administrations
    resources :editable_pages
  end

end
