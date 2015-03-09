Rails.application.routes.draw do

  root 'companies#index'

  resources :companies do
    resources :surveys do
      resources :survey_attribute_group
    end
    resources :admins
    resources :responses
  end

  resources :attribute_groups do
    resources :individual_attributes
  end

  resources :employee_types

  # get 'responses/index'

  # get 'responses/show'

  # get 'responses/create'

  # get 'responses/edit'

  # get 'responses/update'

  # get 'responses/destroy'

  # get 'employee_types/index'

  # get 'employee_types/show'

  # get 'employee_types/create'

  # get 'employee_types/edit'

  # get 'employee_types/update'

  # get 'employee_types/destroy'

  # get 'attributes/index'

  # get 'attributes/show'

  # get 'attributes/create'

  # get 'attributes/edit'

  # get 'attributes/update'

  # get 'attributes/destroy'

  # get 'attribute_groups/index'

  # get 'attribute_groups/show'

  # get 'attribute_groups/create'

  # get 'attribute_groups/edit'

  # get 'attribute_groups/update'

  # get 'attribute_groups/destroy'

  # get 'surveys/show'

  # get 'surveys/create'

  # get 'surveys/edit'

  # get 'surveys/update'

  # get 'surveys/destroy'

  # get 'admins/index'

  # get 'admins/show'

  # get 'admins/create'

  # get 'admins/edit'

  # get 'admins/update'

  # get 'admins/destroy'

  # get 'companies/index'

  # get 'companies/createshow'

  # get 'companies/edit'

  # get 'companies/update'

  # get 'companies/destroy'

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
