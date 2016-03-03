Rails.application.routes.draw do


  root                          'home#index'
  get 'courses'             =>  'courses#index'

  resources :years do
    resources :editable_pages
    resources :policies
    resources :admissions,        controller: 'editable_pages', type: 'Admission'
    resources :general_informations
    resources :administrations
    resources :extended_learnings
    resources :colleges
    resources :graduate_programs
    resources :undergraduate_advisements
    resources :undergraduate_programs
    resources :student_services
    resources :degrees
  end

end
