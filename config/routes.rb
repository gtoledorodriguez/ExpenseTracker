Rails.application.routes.draw do
  get 'report/index'
  get 'user/index'
  get 'account/index'
  get 'transaction/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'user#index'
end
