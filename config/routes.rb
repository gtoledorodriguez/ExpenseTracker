Rails.application.routes.draw do
  
  resources :accounts do
    resources :account_transactions
    #resources :transactions
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
