Gunsoficardus::Application.routes.draw do

  get "card_set/list"

  get "card_set/delete"

  post "card_set/delete"

  get "ability/new"

  get "ability/view"

  get "ability/edit"

  post "ability/edit"

  get "ability/list"

  get "ability/delete"

  post "ability/delete"

  get "images/new"

  post "images/new"

  get "images/list"

  get "images/delete"

  post "images/delete"

  get "images/edit"

  get "basic_card/list"

  get "basic_card/list_by_set"

  get "basic_card/view"

  get "basic_card/edit"

  post "basic_card/edit"

  get "basic_card/new"

  post "basic_card/new"

  get "basic_card/delete"

  post "basic_card/delete"

  get "crew_cards/list"

  get "crew_cards/list_by_set"

  get "crew_cards/view"

  get "crew_cards/edit"

  post "crew_cards/edit"

  get "crew_cards/new"

  post "crew_cards/new"

  get "crew_cards/delete"

  post "crew_cards/delete"

  get "deck/new"

  get "deck/edit"

  get "deck/view"

  get "deck/delete"

  post "deck/delete"

  get "user/new"

  post "user/new"

  get "user/view"

  get "user/edit"

  post "user/edit"

  get "user/delete"

  post "user/delete"

  get "card_set/new"

  post "card_set/new"

  get "card_set/edit"

  post "card_set/edit"

  get "card_set/view"

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
  root :to => 'games#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
