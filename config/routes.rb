Boot::Application.routes.draw do

  resources :stubs

  namespace 'chargify' do
    match '/hooks' => "hooks#dispatch_handler", :via => "post"
  end  
  
  resources :messages
  match "contact" => "messages#new"

  resources :renters
  match "rent" => "renters#new"

  resources :sellers
  match "sell" => "sellers#new"
  
  resources :buyers
  match "buy" => "buyers#new"

  resources :listings

  resources :leads

  devise_for :users, :controllers => { :registrations => "registrations" }
  
  resources :users

  get "pages/index" 
  match "index" => "pages#index"
  
  get "pages/submitted"
  match "submitted" => "pages#submitted", :as => 'submitted_page'

  get "pages/about"
  match "about" => "pages#about"

  get "pages/find"
  match "find" => "pages#find"
  match "find-a-realtor" => "pages#find"
  
  get "pages/agent"
  match "realtors" => "pages#agent"
  
  get "pages/sent_message"
  match "mail_sent" => "pages#sent_message", :as => 'sent_message'

  get "pages/agent"
  match "agents" => "pages#agent"
  
  get "pages/terms_of_use"
  match "terms" => "pages#terms_of_use"
  
  get "pages/privacy_policy"
  match "privacy_policy" => "pages#privacy_policy"
  
  get "users/cpanel"
  match "cpanel" => "users#cpanel", :as => 'user_root'
  
  get "users/index"
  
  get "listings/manage_listings"
  match "manage_listings" => "listings#manage_listings"
  
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
