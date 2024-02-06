Rails.application.routes.draw do

  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  devise_for :users
  # ルーティングを一括で。onlyオプションで限定して生成
  resources :post_images, only: [:new, :index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
