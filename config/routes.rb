FurEel::Application.routes.draw do


  resources :friends do
    collection do
      get :admin
    end
  end
  resources :shows do
    collection do
      get :admin
    end
  end
  resources :fans do
    collection do
      get :admin
    end
  end
  resources :bands do
    collection do
      get :admin
    end
  end
  resources :contacts do
    collection do
      get :admin
    end
  end
  resources :members do
    collection do
      get :admin
    end
  end
  resources :articles do
    collection do
      get :admin
    end
  end
  resources :stores do
    collection do
      get :admin
    end
  end
  resources :pictures do
    collection do
      get :admin
    end
  end
  resources :musics do
    collection do
      get :admin
    end
  end
  resources :videos do
    collection do
      get :admin
    end
  end
   resources :users

root to: 'static_pages#free_album'

  match '/home',      to: 'static_pages#home'
  match '/news',      to: 'static_pages#home'
  match '/friends',   to: 'friends#index'
  match '/shows',     to: 'shows#index' 
  match '/fans',     to: 'fans#index'
  match '/bands',     to: 'bands#index'
  match '/contacts',     to: 'contacts#index'
  match '/members',     to: 'members#index'
  match '/articles',     to: 'articles#index'
  match '/stores',     to: 'stores#index'
  match '/pictures',     to: 'pictures#index'
  match '/musics',     to: 'musics#index'
  match '/videos',     to: 'videos#index'

  match '/shows/admin', to: 'shows#admin'
  match '/friends/admin',   to: 'friends#admin'
  match '/fans/admin',     to: 'fans#admin'
  match '/bands/admin',     to: 'bands#admin'
  match '/contacts/admin',     to: 'contacts#admin'
  match '/members/admin',     to: 'members#admin'
  match '/articles/admin',     to: 'articles#admin'
  match '/stores/admin',     to: 'stores#admin'
  match '/pictures/admin',     to: 'pictures#admin'
  match '/musics/admin',     to: 'musics#admin'
  match '/videos/admin',     to: 'videos#admin'

  match '/admin',     to: 'static_pages#admin'
  match '/perhaps_another_time',     to: 'static_pages#perhaps_another_time'
  match '/download',     to: 'static_pages#download'
  match '/freealbum', to: 'fans#new'

match '/free_album', to: 'static_pages#free_album'

match '/welcome_email', to: 'fan_mailer/welcome_email'

resources :sessions

match '/login', to:'sessions#new'
match '/logout', to: 'sessions#destroy'



   # resources :sessions, only: [:new, :create, :destroy]
  


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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
