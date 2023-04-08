Rails.application.routes.draw do
  root to: 'homes#top' #root to: でルートの入力でhomes#topアクションを実行させる
  # get 'books/index' => 'books#index'
  # get 'books/show' => 'books#show' #URL books/showにアクセスしたときにshowアクションを実行
  # get 'books/edit' => 'books#edit'
  # get 'homes/top' => 'homes#top'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
