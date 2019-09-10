Rails.application.routes.draw do


 get 'end_users/:id' => 'end_users#show' ,as: 'end_users'



 devise_for :end_users, :controllers => {
    :registrations => 'end_users/registrations',
    :sessions => 'end_users/sessions'
  }

 devise_scope :user do

# ーーー一般登録ーーー
  get '/end_users/sign_up' => 'end_users/registrations#new'
  post '/end_users' => 'end_users/registrations#creare'


# ーー一般ログインーーーーー
  get 'end_users/sign_in' => 'end_users/sessions#new'
  post 'end_users/sign_in' => 'end_users/sessions#create'


 end

# ーーー管理ログインーーー

  devise_for :admin_users,  :controllers => {
    :sessions => 'admin_users/sessions'
  }

   devise_scope :user do

    get 'admin_users/sign_in' => 'admin_users/sessions/new'
    post 'admin_users/sign_in' => 'admin_users/sessions#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  end



   
end
