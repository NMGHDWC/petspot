Rails.application.routes.draw do
  devise_for :admins
  
  devise_for :users
  scope module: :public do
    root 'users#top'
    get 'users/mypage'
    
  end
end
