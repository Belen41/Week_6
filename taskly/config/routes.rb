Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :edit] do
        resources :tasks,except: [:new, :edit]
        patch 'tasks/:id/complete', to: 'tasks#complete'
        put 'tasks/:id/complete', to: 'tasks#complete'
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
