Rails.application.routes.draw do
  resources :techerinfos
  resources :students
  
  get 'students/demo', to: 'students#demo'
  get 'students/index', to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end