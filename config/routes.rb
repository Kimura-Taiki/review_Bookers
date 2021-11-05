Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise関連の道筋を定義
  devise_for :users
  # トップページの道筋
  root to: 'homes#top'
end
