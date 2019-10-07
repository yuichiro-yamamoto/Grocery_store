Rails.application.routes.draw do


#------ トッページ ------------

  get '/' => 'root#top'

#------ 一般ログイン・登録 -----------

 devise_for :end_users, :controllers => {
    :registrations => 'end_users/registrations',
    :sessions => 'end_users/sessions'
  }


#---------- 一般ログアウト ----------

 # devise_scope :end_user do
 #    get '/end_users/sign_out' => 'end_users/sessions#destroy'
 #  end


#------- 一般退会 -------------

  get 'end_users/unsubscribe' => 'end_users#unsubscribe'


#------- 一般マイページ --------------

  resources :end_users, only: [:show, :edit, :update] 
  


#---------- 商品カート -----------

resources :end_cart_items, only: [:create, :index, :destroy, :update]


#----- 一般商品一覧・詳細 ---------------

resources :end_items, only: [:index, :show]


#-------  一般商品購入・購入履歴 ---------------------

resources :end_purchase_histories, only: [:new, :create, :index, :show]


#---------- 管理ログイン ----------------

  devise_for :admin_users,  :controllers => {
    :sessions => 'admin_users/sessions'
  }


# ---------- 管理マイページ -----------

 get 'admin_users/show' => 'admin_users#show'


# ----------管理ログアウト ----------

  # devise_scope :admin_user do
  #   get '/admin_users/sign_out' => 'admin_users/sessions#destroy'
  # end


#--------------- 管理商品追加 ----------------

 resources :items, only: [:new, :show, :edit, :update, :destroy, :create ]

 
# ----------- 管理商品一覧・詳細 ----------

 resources :admin_items, only: [:index, :show]


#---------- 管理購入履歴・詳細 -------------

 resources :admin_purchase_histories, only: [:index, :show, :update]





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
