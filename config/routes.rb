Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise関連の道筋を定義します。
  devise_for :users
  # トップページの道筋を定義します。
  root to: 'homes#top'
  # アバウトへの道筋が浮くのでそれも定義します。
  get "home/about", to: 'homes#about', as: "about"
  # UserとBookはresourcesで道筋を定義します。
  # Userは単数でも行けそうですが、他人の:showを見るために複数形にしています。
  # ちなみにreso複数形、model単数形だとindex_model_pathという変な名前ができます
  # 逆にreso単数形、model複数形だと単数ヘルパーに複数形の付いた変な名前ができます。
  resources :users, only:[:index, :show, :edit, :update]
  resources :books, only:[:index, :create, :show, :edit, :update, :destroy]
end
