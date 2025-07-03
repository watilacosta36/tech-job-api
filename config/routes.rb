Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :jobs, only: [ :index, :create, :show ]
      resources :job_applications, only: [ :create ]
      resources :job_tags
      resources :job_benefits
      resources :job_requirements
      resources :companies

      post "auth/sign_up", to: "auth#sign_up"
      post "auth/login", to: "auth#login"
    end
  end

  namespace :admin do
    resources :jobs, only: [ :index ]
  end
end
