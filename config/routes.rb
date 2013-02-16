Myapp::Application.routes.draw do
  match '/blogs/edit' => 'blogs#edit', :via => :get
  match '/blogs/list' => 'blogs#list', :via => :get
  match 'blogs' => 'blogs#submit_blog', :via => :post
  #resources :blogs
  #
  #
  #match '/list' => 'home#list', :via => :get
  #match '/eidt' => 'home#edit', :via => :get
  root :to => 'home#index'
end




