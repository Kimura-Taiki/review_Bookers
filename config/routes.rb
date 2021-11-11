Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 新しい枝に来たぞ
  root to: 'books#home'
  resources :books
end
