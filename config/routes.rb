Rails.application.routes.draw do
  get 'arrival/:number', to: 'arrivals#show', as: :arrival
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'sms', to: 'arrivals#send_sms', as: :sms
  get 'keyinfo/:flat_name', to: 'keyinfos#show', as: :keyinfo
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
