Rails.application.routes.draw do
  get 'upload/get_image'
  
  #index:
  root 'index#main'
  get 'index_login' => 'index#index_login', as: :index_login
  
  #default search type=books
  post 'search/' => 'index#searchforbooksresults'
  #search results
  get 'search/:keywords/:page' => 'index#searchforbooksresults',as: :booksearch
  get 'search_course/:keywords/:page' => 'index#searchforcoursesresults',as: :coursesearch

  ##########user##########
  get 'index/usercenter'
  post 'login' => 'users#login'
  post 'register' => 'users#create'
  get '/bookcollection' => 'index#bookcollection', as: :bookcollection
  get '/coursecollection' => 'index#coursecollection', as: :coursecollection
  get 'logout' => 'users#logout', as: :logout
  		
  ##########book##########
  get 'newbook' => 'books#newbook', as: :newbook
  get 'books/related_course' => 'books#related_course'
  post 'books' => 'books#create_newbook'
  get 'books/detail/:id' => 'books#bookdetail', as: :bookdetail

  ##########course##########
  get 'newcourse' => 'courses#newcourse', as: :newcourse
  get 'courses/detail/:id' => 'courses#coursedetail', as: :coursedetail
  
  ##########picture##########
  post 'save_picture' => 'upload#save_picture'
  get 'upload/show_image/:id' => 'upload#show_image'
  get 'upload/picture/:id' => 'upload#picture'
  
  ##########review#########
  post 'write_review' => 'books#write_review'
  post 'write_note' => 'books#write_note'
  post 'write_question' => 'books#write_question'
  get 'books/:book_id/notes/:note_id' => 'books#topicdetail', as: :book_topic
  post '/post_reply_for_article' => 'books#post_reply_for_article'

  #test
  get 'show/:sth' => 'index#show', as: :show


  resources :userinfos
  resources :globalinfos
  resources :books
  resources :users
  resources :courses
  resources :books
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
