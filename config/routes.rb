Rottenpotatoes::Application.routes.draw do
  devise_for :moviegoers
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
end
