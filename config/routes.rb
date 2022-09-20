Rails.application.routes.draw do
  devise_for :customers
  # 応用知識学習フェーズ　実装ヒント　複数権限での〜で追加記述をする
  devise_for :admins
  # 応用知識学習フェーズ　実装ヒント　複数権限での〜で追加記述をする
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
 root to:'homes#top'
  
  get 'items' => 'public/items#index'
  
  namespace :admin do
    get 'items' => 'admin/items#index'
  end
end
