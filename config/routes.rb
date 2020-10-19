Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs
  namespace :user do
    mount_devise_token_auth_for 'User', at: '', controllers: {
      sessions: 'api/v1/user/sessions'
    }
  end
end
