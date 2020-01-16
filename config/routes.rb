Rails.application.routes.draw do
  devise_for :users

  resources :flats do
    resources :keyinfos
  end

  #GO RAILS sortableJS Tweak (see at 04:33) https://gorails.com/episodes/sortable-drag-and-drop
    patch 'flats/:flat_id/order/:data_value', to: 'arrivals#sort', as: :sort_flat_order


  # arrivals perso based on position (not ID like in resources)
    get 'flats/:flat_id/arrivals', to: 'arrivals#index', as: :flat_arrivals
    post 'flats/:flat_id/arrivals', to: 'arrivals#create'


    get 'flats/:flat_id/arrivals/new', to: 'arrivals#new', as: :new_flat_arrival
    get 'flats/:flat_id/arrivals/:position/edit', to: 'arrivals#edit', as: :edit_flat_arrival
    get 'flats/:flat_id/arrivals/:position', to: 'arrivals#show', as: :flat_arrival



    # attention for update :position does not work but only :id
    patch 'flats/:flat_id/arrivals/:id', to: 'arrivals#update'
    put 'flats/:flat_id/arrivals/:id', to: 'arrivals#update'
    delete 'flats/:flat_id/arrivals/:position', to: 'arrivals#destroy'

 #send sms
    get 'flats/:flat_id/arrivals/:position/sms', to: 'arrivals#send_sms', as: :sms


   # perso
    get 'about', to: 'pages#about', as: :about
    get 'contact', to: 'pages#contact', as: :contact


    get ':flat_name', to: 'pages#homes_for_booking', as: :homes_for_booking
    root to: 'pages#home'

end

  # my verif of arrivals based on position before resources(:id) VS after (:position)
          #flat_arrivals GET    /flats/:flat_id/arrivals(.:format)          arrivals#index
                        #POST   /flats/:flat_id/arrivals(.:format)          arrivals#create
       #new_flat_arrival GET    /flats/:flat_id/arrivals/new(.:format)      arrivals#new
      #edit_flat_arrival #GET    /flats/:flat_id/arrivals/:id/edit(.:format) arrivals#edit
           #flat_arrival #GET    /flats/:flat_id/arrivals/:id(.:format)      arrivals#show
                         #PATCH  /flats/:flat_id/arrivals/:id(.:format)      arrivals#update
                         #PUT    /flats/:flat_id/arrivals/:id(.:format)      arrivals#update
                         #DELETE /flats/:flat_id/arrivals/:id(.:format)      arrivals#destroy

                         #POST   /flats/:flat_id/arrivals(.:format)              arrivals#create
       #edit_flat_arrival GET    /flats/:flat_id/arrivals/:position/edit(.:format) arrivals#edit
            #flat_arrival GET    /flats/:flat_id/arrivals/:position(.:format)      arrivals#show
                         #PATCH  /flats/:flat_id/arrivals/:position(.:format)      arrivals#update
                         #PUT    /flats/:flat_id/arrivals/:position(.:format)      arrivals#update
                         #DELETE /flats/:flat_id/arrivals/:position(.:format)      arrivals#destroy

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

