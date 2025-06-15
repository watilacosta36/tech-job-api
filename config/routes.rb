Rails.application.routes.draw do
  resources :job_applications
  resources :job_tags
  resources :job_benefits
  resources :job_requirements
  resources :companies

  namespace :api do
    namespace :v1 do
      resources :jobs, only: [:index, :create, :show]
    end
  end 
end
