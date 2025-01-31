class ProdutoCarrinho < ApplicationRecord
    belongs_to :carrinho
    belongs_to :produto
  
    validates :quantidade, numericality: { greater_than_or_equal_to: 0 }
  
    def total
      quantidade * produto.preco
    end
end