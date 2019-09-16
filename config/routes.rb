Rails.application.routes.draw do


# ーー一般トップページーーー

 get '/top' => 'root#top'



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



# ーーーーミスーーーーーーー

    # get 'admin_users/sign_in' => 'admin_users/sessions/new'
    # post 'admin_users/sign_in' => 'admin_users/sessions#create'




# ーーー一般マイページーーーー

  get 'end_users/unsubscribe' => 'end_users#unsubscribe'

  resources :end_users, only: [:show, :edit, :update, :destroy] do
  end



# ーーー管理ログインーーー

  devise_for :admin_users,  :controllers => {
    :sessions => 'admin_users/sessions'
  }


# ーーーー管理マイページーーーーー

 get 'admin_users/show' => 'admin_users#show'


# ーーーーー管理ログアウトーーーーーー
 devise_scope :admin_user do
    get '/admin_users/sign_out' => 'admin_users/sessions#destroy'
  end


# ーーーーー管理商品追加ーーー

 resources :items, only: [:new, :show, :edit, :update, :destroy, :create ]do

 end


# ーーーーーー管理商品管理ーーーー

 resources :admin_items, only: [:index, :show ]do

 end
 # get 'end_users/:id' => 'end_users#show' ,as: 'end_users'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
