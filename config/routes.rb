Rails.application.routes.draw do

  devise_for :users
  
  root 'home#index'
  
  get 'go' => 'home#mentor_apply_form'
  get 'help' => 'home#help'
  get 'mypage' => 'home#mypage'
  get 'chat' => 'home#chat'
  get 'enroll_mentor' => 'home#enroll_mentor'
  post 'enroll_process' => 'home#enroll_process'
  get 'admin' => 'home#admin'
  get 'service' => 'home#service'
  post 'admit' => 'home#admit'
  post 'search_list' => 'home#search_list'
  get 'mentor_page/:id'=>'home#mentor_page'
  
  get 'meeting/index' => 'meeting#index'
  get 'meeting_detail/:id'=>'meeting#meeting_detail'
  post 'meeting/register_meeting'

  post 'meeting/participate_in'
  post '/need_mentor' => 'home#need_mentor'

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
