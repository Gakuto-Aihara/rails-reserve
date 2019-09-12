Rails.application.routes.draw do
  resources :events
  get 'events/edit'
  get 'events/show'
  get 'events/index'
  get 'top/about'
  root "top#index"
  get "index" => "top#index", as: "index"
  get "about" => "top#about", as: "about"
  1.upto(18) do |n|
     get "lesson/step#{n}(/:name)" => "lesson#step#{n}"
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
