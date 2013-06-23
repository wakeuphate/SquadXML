SquadXML::Application.routes.draw do
  resources :squads
  resources :squad_members

  root :to => "squads#index"

  devise_for :users
  devise_scope :user do
    match "/login" => "devise/sessions#new"
    match "/logout" => "devise/sessions#destroy"
    match "/signup" => "devise/registrations#new"
  end
end
