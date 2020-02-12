Rails.application.routes.draw do
  <<<<<<< add-posting-article-function
  
    root "messages#index" 
  
  =======
    resources :articles
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  >>>>>>> master
  end
