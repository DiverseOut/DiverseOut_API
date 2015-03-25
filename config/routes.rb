Rails.application.routes.draw do

  root 'companies#index'

  get 'admins/authenticate', to: 'admins#authenticate'

  get 'attribute_groups', to: 'attribute_groups#index'

  # get 'companies/:company_id/responses', to: 'responses#show_all'

  match '/*path' => 'application#options', :via => :options

  resources :admins do
    resources :companies, only: [:create, :edit, :update, :destroy] do
      resources :surveys, only: [:create, :edit, :update, :destroy]
    end
  end

  resources :companies, only: [:index, :show] do
    resources :surveys, only: [:index, :show] do
      resources :survey_attribute_group
    end
    resources :responses
  end

  # resources :attribute_groups do
  #   resources :individual_attributes
  # end

  # resources :employee_types

end
