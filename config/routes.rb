Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Route per Localtower
  if Rails.env.development? and defined?(Localtower)
    mount Localtower::Engine, at: "localtower"
  end

  #interfacce dei modelli per query su /db_admin con gemma rails_admin
  mount RailsAdmin::Engine => '/db_admin', as: 'rails_admin'

end
