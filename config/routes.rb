Qwstore::Application.routes.draw do
  get "static/index" => 'static#index'

  get "static/whipcare"

  get "static/contact"

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products do
      get :who_bought, on: :member
    end
    root to: 'store#index', as: 'store'
  end
end