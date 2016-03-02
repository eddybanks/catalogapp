Rails.application.routes.draw do

  root                          'home#index'
  get 'courses'           =>  'courses#index'

  resources :years do
    resources :editable_pages
    resources :policies
    resources :admissions,        controller: 'editable_pages', type: 'Admission'
    resources :general_informations
    resources :administrations
  end

end
