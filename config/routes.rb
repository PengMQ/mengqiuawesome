Myapp::Application.routes.draw do
  match '/blogs/new' => 'blogs#new', :via => :get
  match '/blogs/list' => 'blogs#list', :via => :get
  match 'blogs'       => 'blogs#submit_blog', :via => :post
  match '/blogs/:blog_id/view' => 'blogs#view', :via => :get

  #resources :blogs
  #
  #
  #match '/list' => 'home#list', :via => :get
  #match '/eidt' => 'home#edit', :via => :get
  root :to => 'home#index'
end




