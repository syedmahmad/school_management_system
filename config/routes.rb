Rails.application.routes.draw do
  root to: "home#index"
  devise_scope :user do get "/" => "sessions#new"
  end
  devise_for :users, :controllers => { sessions: "sessions", registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
