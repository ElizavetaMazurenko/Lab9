Rails.application.routes.draw do
  get 'explicit/in'
  get 'explicit/ajax'
  root to: 'explicit#in'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
