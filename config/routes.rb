Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resource :users
    resource :session, only:[:create, :destroy]
    
  end

end