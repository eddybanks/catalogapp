Rails.application.routes.draw do

  root                          'home#index'

  resources :years do
    get 'courses'           =>  'courses#index'
    resources :policies
    resources :admissions
    resources :general_informations
    resources :administrations
    resources :editable_pages
  end

end
