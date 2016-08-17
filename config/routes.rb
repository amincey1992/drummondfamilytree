Rails.application.routes.draw do

  
  resources :comment_sells
  

  resources :activities

  resources :albumtens do 
    member do
    get "like", to: "albumtens#upvote"
    get "dislike", to: "albumtens#downvote"
  end 
end 

  resources :albumeights do 
  member do
    get "like", to: "albumeights#upvote"
    get "dislike", to: "albumeights#downvote"
  end 
end 

  resources :albumsevens do 

  member do
    get "like", to: "albumsevens#upvote"
    get "dislike", to: "albumsevens#downvote"
  end 
end 
  resources :albumsixs do 

  member do
    get "like", to: "albumsixes#upvote"
    get "dislike", to: "albumsixes#downvote"
  end 
end 
  resources :albumnines do 

  member do
    get "like", to: "albumnines#upvote"
    get "dislike", to: "albumnines#downvote"
  end 
end 
  resources :albumfours do 

  member do
    get "like", to: "albumfours#upvote"
    get "dislike", to: "albumfours#downvote"
  end 
end 
  resources :albumthrees do 

  member do
    get "like", to: "albumthrees#upvote"
    get "dislike", to: "albumthrees#downvote"
  end 
end 
  resources :albumtwos do 

  member do
    get "like", to: "albumtwos#upvote"
    get "dislike", to: "albumtwos#downvote"
  end 
end 
  resources :albumones do 

  member do
    get "like", to: "albumones#upvote"
    get "dislike", to: "albumones#downvote"
  end 
end 

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :forums do 
  member do
    get "like", to: "forums#upvote"
    get "dislike", to: "forums#downvote"
  end 
end 

  resources :whips
  resources :comments
devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  resources :events

  resources :sells do 

  member do
    get "like", to: "sells#upvote"
    get "dislike", to: "sells#downvote"
  end 
end 



  root 'welcome#index'

  get 'events' => 'welcome#events'

  get 'shoutouts' => 'whips#index'

  get 'forum' => 'forums#index'

  get 'partout' => 'welcome#partout'

  get 'videos' => 'welcome#videos'

  get 'contacts' => 'welcome#contact'

  get 'fam1' => 'welcome#fam1'

   get 'fam2' => 'welcome#fam2'

    get 'fam3' => 'welcome#fam3'

     get 'fam4' => 'welcome#fam4'

      get 'fam5' => 'welcome#fam5'

       get 'fam6' => 'welcome#fam6'

        get 'fam7' => 'welcome#fam7'

         get 'fam8' => 'welcome#fam8'

          get 'fam9' => 'welcome#fam9'

           get 'fam10' => 'welcome#fam10'

            get 'fam11' => 'welcome#fam11'

             get 'fam12' => 'welcome#fam12'

              get 'fam13' => 'welcome#fam13'

               get 'fam14' => 'welcome#fam14'

                get 'fam15' => 'welcome#fam15'

                 get 'fam16' => 'welcome#fam16'

                  get 'fam17' => 'welcome#fam17'

                   get 'fam18' => 'welcome#fam18'

                    get 'fam19' => 'welcome#fam19'

                     get 'fam20' => 'welcome#fam20'

                      get 'fam21' => 'welcome#fam21'

                       get 'fam22' => 'welcome#fam22'

                        get 'fam23' => 'welcome#fam23'

                         get 'fam24' => 'welcome#fam24'

                          get 'fam25' => 'welcome#fam25'

                           get 'fam26' => 'welcome#fam26'

                            get 'fam27' => 'welcome#fam27'

                             get 'fam28' => 'welcome#fam28'



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
  
end