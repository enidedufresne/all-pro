Rails.application.routes.draw do

  resources :forward_stats
  resources :midfielder_stats
  resources :defender_stats
  resources :goalkeeper_stats
  resources :kicker_returner_stats
  resources :kicker_stats
  resources :tight_end_stats
  resources :wide_receiver_stats
  resources :running_back_stats
  resources :offensive_lineman_stats
  resources :quarterback_stats
  resources :defensive_back_stats
  resources :line_backer_stats
  resources :defensive_tackle_stats
  resources :defensive_end_stats
  resources :sprinter_stats
  resources :runner_stats
  resources :center_stats
  resources :power_forward_stats
  resources :small_forward_stats
  resources :shooting_guard_stats
  resources :point_guard_stats
  resources :designated_hitter_stats
  resources :right_fielder_stats
  resources :center_fielder_stats
  resources :left_fielder_stats
  resources :shortstop_stats
  resources :third_baseman_stats
  resources :second_baseman_stats
  resources :first_baseman_stats
  resources :catcher_stats
  resources :starting_pitcher_stats
  resources :relief_pitcher_stats
  resources :relief_pitcher_stats
  resources :stats
  resources :positions
  resources :sports
  resources :sports
  resources :sports
  resources :posts
  resources :comments, only: [:create, :destroy]
  devise_for :users
  resources :users do
    member do
      get :friends
      get :followers
      get :deactivate
    end
  end
  resources :events, except: [:edit, :update]

  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
  end

  match :follow, to: 'follows#create', as: :follow, via: :post
  match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post
  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
  match :find_friends, to: 'home#find_friends', as: :find_friends, via: :get
  match :about, to: 'home#about', as: :about, via: :get

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
