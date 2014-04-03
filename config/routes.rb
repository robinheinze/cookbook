Cookbook::Application.routes.draw do
  match('/', {:via => :get, :to => 'recipes#index'})
  match('/recipes/', {:via => :get, :to => 'recipes#index'})
  match('/recipes/', {:via => :post, :to => 'recipes#create'})
  match('/recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('/recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  match('/recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
  match('/recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
end
