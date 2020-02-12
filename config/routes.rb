Rails.application.routes.draw do
  
    root "messages#index" 
  

    resources :articles


end
