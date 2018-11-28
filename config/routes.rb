Rails.application.routes.draw do
  post 'rule_token' => 'rule_token#create'
  post 'event_token' => 'event_token#create'
  post 'place_token' => 'place_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #place
  get 'places', to: 'places#index'
  post 'place_post', to: 'places#create'
  get 'places/:id', to: 'places#show'
  delete 'places/delete/:id', to: 'places#delete'
  put 'place/update/:id', to: 'places#update'

  #event
  get 'events', to: 'events#index'
  post 'event_post', to: 'events#create'
  get 'events/:id', to: 'events#show' 
  delete 'events/:id/delete', to: 'events#destroy'
  put 'event/update/:id', to: 'events#update'

  #rule
  get 'rules', to: 'rules#index'
  post 'rule_post', to: 'rules#create'
  get 'rules/:id', to: 'rules#show'
  delete 'rules/delete/:id', to: 'rules#destroy'
  put 'rule/update/:id', to: 'rules#update'
end