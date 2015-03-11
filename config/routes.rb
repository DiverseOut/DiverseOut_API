Rails.application.routes.draw do

  root 'companies#index'



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
