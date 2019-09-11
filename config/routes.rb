Rails.application.routes.draw do


# ---- 一般ログイン・登録-------


 devise_for :end_users, :controllers => {
    :registrations => 'end_users/registrations',
    :sessions => 'end_users/sessions'
  }

# ーーー一般登録ミスーーー
  # get '/end_users/sign_up' => 'end_users/registrations#new'
  # post '/end_users' => 'end_users/registrations#creare'


# ーー一般ログインミスーーーーー
  # get 'end_users/sign_in' => 'end_users/sessions#new'
  # post 'end_users/sign_in' => 'end_users/sessions#create'



# ーーー管理ログインーーー

  devise_for :admin_users,  :controllers => {
    :sessions => 'admin_users/sessions'
  }

# ーーーーミスーーーーーーー

    # get 'admin_users/sign_in' => 'admin_users/sessions/new'
    # post 'admin_users/sign_in' => 'admin_users/sessions#create'


# ーーー一般マイページーーーー
   # get 'end_users/:id' => 'end_users#show' ,as: 'end_users'

   resources :end_users, only: [:show, :edit, :update] do
   end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
