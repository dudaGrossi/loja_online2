Rails.application.routes.draw do
  # Devise cuida da autenticação (login, logout, cadastro, recuperação de senha)
  devise_for :users
  
  devise_scope :user do
    get "login", to: "devise/sessions#new"
    post "login", to: "devise/sessions#create"
    delete "logout", to: "devise/sessions#destroy"
  end

  authenticated :user do
    root to: "home#index", as: :authenticated_root
  end
  
  # Define corretamente a rota root para usuários autenticados e não autenticados
  unauthenticated :user do
    as :user do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end

  # Página de cadastro 
  get "cadastro", to: "devise/registrations#new"

  # Produtos
  resources :produtos, only: [:index]

  # Carrinho
  resource :carrinhos, only: [:show] do
    post "adicionar/:id", to: "carrinhos#adicionar", as: "adicionar"
    delete "remover/:id", to: "carrinhos#remover", as: "remover"
    patch "aumentar/:id", to: "carrinhos#aumentar_quantidade", as: "aumentar"
    patch "diminuir/:id", to: "carrinhos#diminuir_quantidade", as: "diminuir"
  end

  # Pedidos
  get "finalizar", to: "pedidos#finalizar"
  post "finalizar", to: "pedidos#finalizar"
end
