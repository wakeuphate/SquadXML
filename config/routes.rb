SquadXML::Application.routes.draw do
  match '/squads/404.paa' => 'squads#logo'
  resources :squads
  resources :squad_members

  root :to => "application#index"

  devise_for :users
  devise_scope :user do
    match "/login" => "devise/sessions#new"
    match "/logout" => "devise/sessions#destroy"
    match "/signup" => "devise/registrations#new"
  end
end
