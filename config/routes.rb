Alliance::Application.routes.draw do

  resources :chapters, only: :create

  match 'admin' => 'admin#index'

end
