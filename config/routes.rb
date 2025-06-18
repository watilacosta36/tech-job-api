Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :jobs, only: [:index, :create, :show]
      resources :job_applications, only: [:create]
      resources :job_tags
      resources :job_benefits
      resources :job_requirements
      resources :companies
    end
  end 
end
