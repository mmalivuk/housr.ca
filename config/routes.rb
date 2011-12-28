Boot::Application.routes.draw do
  resources :listings

  resources :leads

  devise_for :users
  
  resources :users

  get "pages/index" 
  match "index" => "pages#index"

  get "pages/about"
  match "about" => "pages#about"

  get "pages/buy"
  match "buy" => "pages#buy"

  get "pages/sell"
  match "sell" => "pages#sell"

  get "pages/rent"
  match "rent" => "pages#rent"

  get "pages/find"
  match "find" => "pages#find"

  get "pages/contact"
  match "contact" => "pages#contact"

  get "pages/agent"
  match "agents" => "pages#agent"
  
  get "users/cpanel"
  match "cpanel" => "users#cpanel", :as => 'user_root'
  
  get "users/index"
  
  get "leads/manage_leads"
  match "manage_leads" => "leads#manage_leads"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
