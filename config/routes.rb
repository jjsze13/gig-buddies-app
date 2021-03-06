Rails.application.routes.draw do
  
  get '/' => 'homepages#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/concerts' => 'concerts#index'
  get '/concerts/new' => 'concerts#new'
  post '/concerts' => 'concerts#create'
  get '/concerts/:id' => 'concerts#show'
  get '/concerts/:id/edit' => 'concerts#edit'
  patch '/concerts/:id' => 'concerts#update'
  delete '/concerts/:id' => 'concerts#destroy' 


  

  get '/venues' => 'venues#index'
  get '/venues/new' => 'venues#new'
  post '/venues' => 'venues#create'
  get '/venues/:id' => 'venues#show'
  get '/venues/:id/edit' => 'venues#edit'
  patch '/venues/:id' => 'venues#update'
  delete '/venues/:id' => 'venues#destroy' 

  get '/reviews' => 'reviews#index'
  get '/reviews/new' => 'reviews#new'
  post '/reviews' => 'reviews#create'
  get '/reviews/:id' => 'reviews#show'
  get '/reviews/:id/edit' => 'reviews#edit'
  patch '/reviews/:id' => 'reviews#update'
  delete '/reviews/:id' => 'reviews#destroy' 

  get '/tickets' => 'tickets#index'
  get '/tickets/new' => 'tickets#new'
  post '/tickets' => 'tickets#create'
  get '/tickets/:id' => 'tickets#show'
  get '/tickets/:id/edit' => 'tickets#edit'
  patch '/tickets/:id' => 'tickets#update'
  delete '/tickets/:id' => 'tickets#destroy'

  post '/user_concerts' => 'user_concerts#create'

  post '/google_calendars' => 'google_calendars#create'

  get '/notifications' => 'notifications#sendmessage'

  namespace :api do
    namespace :v1 do
      get '/concerts' => 'concerts#index'
      get 'user_concerts' => 'user_concerts#index'
      post 'reviews' => 'reviews#create'
    end
  end


end
