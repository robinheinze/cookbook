Cookbook::Application.routes.draw do
  # match('/', {:via => :get, :to => 'recipes#index'})
  match('/recipes/', {:via => :get, :to => 'recipes#index'})
  match('/recipes/', {:via => :post, :to => 'recipes#create'})
  match('/recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('/recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  match('/recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
  match('/recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})

  match('/tags/', {:via => :get, :to => 'tags#index'})
  match('/tags/', {:via => :post, :to => 'tags#create'})
  match('/tags/:id', {:via => :get, :to => 'tags#show'})
  match('/tags/:id', {:via => [:patch, :put], :to => 'tags#update'})
  match('/tags/:id', {:via => :delete, :to => 'tags#destroy'})
  match('/tags/:id/edit', {:via => :get, :to => 'tags#edit'})

  match('/', {:via => :get, :to => 'application#landing'})
end
