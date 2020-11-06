Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_devise_token_auth_for 'Account', at: 'auth', controllers: {
    sessions: 'sessions'
  }
end
