Pearls::Application.routes.draw do
  get "sessions/new"

  get "users/new"

  get "categories/index"

  get "categories/new"

  get "categories/edit"

  get "assets/index"

  get "assets/new"

  get "assets/show"

  get "pages/index"

  get "girls/index"

  get "girls/edit"

  get "girls/new"

  get "girls/admin_index"

  get "girls/tonights_girls"

  get "prices" => "pages#prices", :as => "prices"
  get "how_to_book" => "pages#how_to_book", :as => "how_to_book"
  get "promises" => "pages#promises", :as => "promises"
  get "faq" => "pages#faq", :as => "faq"
  get "work_for_us" => "pages#work_for_us", :as => "work_for_us"
  get "contact" => "pages#contact", :as => "contact"

  resources :girls
  resources :assets
  resources :categories

  root :to => "pages#index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
