Rails.application.routes.draw do
  #ルーティング設定
  resources :books
  get "/top" => "homes#top"
end
