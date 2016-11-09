Rails.application.routes.draw do
  devise_for :users
resources :articles do
  resources :comments
end
  resources :categories
  get 'welcome/index'
  root 'welcome#index'
 

end




