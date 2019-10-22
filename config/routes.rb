Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/toys", to: "toys#index", as: "toys"
  get "/toys/new", to: "toys#new", as: "new_toy"
  post "/toys", to: "toys#create"
  get "/toys/:id", to: "toys#show", as: "toy"
  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy"
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"
  delete "/toys/:id", to: "toys#destroy"  

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  put "/users/:id", to: "users#update"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"  

  get "/manufacturers", to: "manufacturers#index", as: "manufacturers"
  get "/manufacturers/new", to: "manufacturers#new", as: "new_manufacturer"
  post "/manufacturers", to: "manufacturers#create"
  get "/manufacturers/:id", to: "manufacturers#show", as: "manufacturer"
  get "/manufacturers/:id/edit", to: "manufacturers#edit", as: "edit_manufacturer"
  put "/manufacturers/:id", to: "manufacturers#update"
  patch "/manufacturers/:id", to: "manufacturers#update"
  delete "/manufacturers/:id", to: "manufacturers#destroy"  



end