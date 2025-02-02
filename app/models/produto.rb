class Produto < ApplicationRecord
    has_many :pedido_produtos
    has_many :pedidos, through: :pedido_produtos
    has_many :produto_carrinhos
    has_many :carrinhos, through: :produto_carrinhos
    has_one :estoque
  
  
    validates :nome, presence: true
    validates :preco, numericality: { greater_than: 0 }
    validates :imagem, presence: true
  
    def to_s
      nome
    end
end