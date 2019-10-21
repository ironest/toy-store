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

end