Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :timesheets, only: [:index, :create, :delete, :update, :generate_invoice]
    end
  end
end
