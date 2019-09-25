Rails.application.routes.draw do
  devise_for :users

  resources :flats

    #arrivals based on number (not ID like in resources)
    get 'flats/:flat_id/arrivals', to: 'arrivals#index', as: :flat_arrivals
    post 'flats/:flat_id/arrivals', to: 'arrivals#create'
    get 'flats/:flat_id/arrivals/new', to: 'arrivals#new', as: :new_flat_arrival
    get 'flats/:flat_id/arrivals/:number/edit', to: 'arrivals#edit', as: :edit_flat_arrival
    get 'flats/:flat_id/arrivals/:number', to: 'arrivals#show', as: :flat_arrival
    #send sms
    get 'flats/:flat_id/arrivals/:number/sms', to: 'arrivals#send_sms', as: :sms


    # attention for update :number does not work but only :id
    patch 'flats/:flat_id/arrivals/:id', to: 'arrivals#update'
    put 'flats/:flat_id/arrivals/:id', to: 'arrivals#update'
    delete 'flats/:flat_id/arrivals/:number', to: 'arrivals#destroy'


   # perso
    get 'about', to: 'pages#about', as: :about
    get 'contact', to: 'pages#contact', as: :contact

    get 'keyinfos/:flat_name', to: 'keyinfos#show', as: :keyinfos
    get ':flat_name', to: 'pages#homes_for_booking', as: :homes_for_booking
    root to: 'pages#home'

end

  # my verif of arrivals based on number before resources(:id) VS after (:number)
          #flat_arrivals GET    /flats/:flat_id/arrivals(.:format)          arrivals#index
                        #POST   /flats/:flat_id/arrivals(.:format)          arrivals#create
       #new_flat_arrival GET    /flats/:flat_id/arrivals/new(.:format)      arrivals#new
      #edit_flat_arrival #GET    /flats/:flat_id/arrivals/:id/edit(.:format) arrivals#edit
           #flat_arrival #GET    /flats/:flat_id/arrivals/:id(.:format)      arrivals#show
                         #PATCH  /flats/:flat_id/arrivals/:id(.:format)      arrivals#update
                         #PUT    /flats/:flat_id/arrivals/:id(.:format)      arrivals#update
                         #DELETE /flats/:flat_id/arrivals/:id(.:format)      arrivals#destroy

                         #POST   /flats/:flat_id/arrivals(.:format)              arrivals#create
       #edit_flat_arrival GET    /flats/:flat_id/arrivals/:number/edit(.:format) arrivals#edit
            #flat_arrival GET    /flats/:flat_id/arrivals/:number(.:format)      arrivals#show
                         #PATCH  /flats/:flat_id/arrivals/:number(.:format)      arrivals#update
                         #PUT    /flats/:flat_id/arrivals/:number(.:format)      arrivals#update
                         #DELETE /flats/:flat_id/arrivals/:number(.:format)      arrivals#destroy

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

