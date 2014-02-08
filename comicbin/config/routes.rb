Comicbin::Application.routes.draw do
  root "comics#index"
  get "/comics" => 'comics#index'
  get "/comics/new" => 'comics#new'
  get "/comics/create" => 'comics#create'
  get "/comics/delete/:id" => 'comics#delete'
  get "/comics/:id" => 'comics#show'
end
