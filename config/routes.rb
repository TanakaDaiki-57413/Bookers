Rails.application.routes.draw do
  #ルーティング設定
  resources :books
  root to: 'homes#top'
end
