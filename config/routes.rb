Rails.application.routes.draw do
  devise_for :teachers
  resources :subjects
  resources :subject_categories
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
