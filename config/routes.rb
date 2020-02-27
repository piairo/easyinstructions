Rails.application.routes.draw do
  devise_for :users

  resources :instructions do
    resources :keyinfos
  end

  #GO RAILS sortableJS Tweak (see at 04:33) https://gorails.com/episodes/sortable-drag-and-drop
    patch 'instructions/:instruction_id/order/:data_value', to: 'steps#sort', as: :sort_instruction_order


  # steps perso based on position (not ID like in resources)
    get 'instructions/:instruction_id/steps', to: 'steps#index', as: :instruction_steps
    post 'instructions/:instruction_id/steps', to: 'steps#create'


    get 'instructions/:instruction_id/steps/new', to: 'steps#new', as: :new_instruction_step
    get 'instructions/:instruction_id/steps/:position/edit', to: 'steps#edit', as: :edit_instruction_step
    get 'instructions/:instruction_id/steps/:position', to: 'steps#show', as: :instruction_step



    # attention for update :position does not work but only :id
    patch 'instructions/:instruction_id/steps/:id', to: 'steps#update'
    put 'instructions/:instruction_id/steps/:id', to: 'steps#update'
    delete 'instructions/:instruction_id/steps/:position', to: 'steps#destroy'

 #send sms
 # BEFORE CAROUSEL touch slide (Navbar buttons)
 #    get 'instructions/:instruction_id/steps/:position/sms', to: 'steps#send_sms', as: :sms

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

