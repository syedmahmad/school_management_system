Rails.application.routes.draw do
  
  devise_for :users,:controllers => { sessions: "sessions"}
  root to: "students#index"

  devise_scope :user do get "/" => "sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do    
    collection do
      post 'sign_up'
    end
  end

  resources :students 
  resources :student_classes

end
