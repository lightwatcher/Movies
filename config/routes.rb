Rails.application.routes.draw do
  get '/newmovie' => "application#new"
  get '/movie' => "application#index"
  get '/createmovie' => "application#create"
  get '/movies/:id' => "application#show"
  get '/movies/:id/destroy' => 'application#destroy'
  get '/movies/:id/edit' => 'application#edit'
  get '/updatemovies/:id' => 'application#update'
end
