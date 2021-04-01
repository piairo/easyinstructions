Rails.application.routes.draw do
  devise_for :users

  resources :fields do
    resources :instructions do
      resources :keyinfos
    end
  end
  #GO RAILS sortableJS Tweak (see at 04:33) https://gorails.com/episodes/sortable-drag-and-drop
    patch '/fields/:field_id/instructions/:instruction_id/order/:data_value', to: 'steps#sort', as: :sort_instruction_order


  # steps perso based on position (not ID like in resources)
    get '/fields/:field_id/instructions/:instruction_id/steps', to: 'steps#index', as: :steps
    post '/fields/:field_id/instructions/:instruction_id/steps', to: 'steps#create'
    get '/fields/:field_id/instructions/:instruction_id/steps/new', to: 'steps#new', as: :new_step

    get '/fields/:field_id/instructions/:instruction_id/steps/:position', to: 'steps#show', as: :step
    get   '/fields/:field_id/instructions/:instruction_id/steps/:id/edit', to: 'steps#edit', as: :edit_step

    # attention for update :position does not work but only :id
    patch '/fields/:field_id/instructions/:instruction_id/steps/:id', to: 'steps#update' , as: :update_step
    put   '/fields/:field_id/instructions/:instruction_id/steps/:id', to: 'steps#update'
    delete '/fields/:field_id/instructions/:instruction_id/steps/:position', to: 'steps#destroy'

 #send sms
 # OLD WITHOUT CAROUSEL touch slide (Navbar buttons)
    post '/fields/:field_id/instructions/:instruction_id/steps/:position', to: 'steps#send_sms', as: :sms1

# WITH CAROUSEL
    post 'chocolate-sms', to: 'steps#send_sms', as: :sms


   # perso
    get 'about', to: 'pages#about', as: :about
    get 'contact', to: 'pages#contact', as: :contact


    get ':instruction_name', to: 'pages#homes_for_booking', as: :homes_for_booking
    root to: 'pages#home'

end

  # my verif of steps based on position before resources(:id) VS after (:position)
          #instruction_steps GET    /instructions/:instruction_id/steps(.:format)          steps#index
                        #POST   /instructions/:instruction_id/steps(.:format)          steps#create
       #new_instruction_step GET    /instructions/:instruction_id/steps/new(.:format)      steps#new
      #edit_instruction_step #GET    /instructions/:instruction_id/steps/:id/edit(.:format) steps#edit
           #instruction_step #GET    /instructions/:instruction_id/steps/:id(.:format)      steps#show
                         #PATCH  /instructions/:instruction_id/steps/:id(.:format)      steps#update
                         #PUT    /instructions/:instruction_id/steps/:id(.:format)      steps#update
                         #DELETE /instructions/:instruction_id/steps/:id(.:format)      steps#destroy

                         #POST   /instructions/:instruction_id/steps(.:format)              steps#create
       #edit_instruction_step GET    /instructions/:instruction_id/steps/:position/edit(.:format) steps#edit
            #instruction_step GET    /instructions/:instruction_id/steps/:position(.:format)      steps#show
                         #PATCH  /instructions/:instruction_id/steps/:position(.:format)      steps#update
                         #PUT    /instructions/:instruction_id/steps/:position(.:format)      steps#update
                         #DELETE /instructions/:instruction_id/steps/:position(.:format)      steps#destroy

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

