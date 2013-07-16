Qwstore::Application.routes.draw do
  get "how_to_make" => 'how_to_make#index'

  get "materials" => 'how_to_make#index'

  get "coloring" => 'how_to_make#coloring'

  get "cutting" => 'how_to_make#cutting'

  get "braiding1" => 'how_to_make#braiding1'

  get "braiding2" => 'how_to_make#braiding2'

  get "braiding3" => 'how_to_make#braiding3'
  
  get "braiding4" => 'how_to_make#braiding4'
  
  get "handles" => 'how_to_make#handles'

  get "popper" => 'how_to_make#popper'

  get "index" => 'static#index'

  get "whipcare" => 'static#whipcare' 

  get "contact" => 'static#contact'

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  scope '(:locale)' do
    resources :pay_types
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