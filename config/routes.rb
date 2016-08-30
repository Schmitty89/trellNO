Rails.application.routes.draw do
  root 'boards#board'
  resources :boards, shallow: true do
    resources :lists do
      resources :cards do
        resources :comments
      end
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
