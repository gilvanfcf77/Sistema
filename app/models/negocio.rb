class Negocio < ActiveRecord::Base
  belongs_to :produto
  validates :produto, presence: true
  validates :quantidade, presence: true
  validates :codigo, presence: true
  validates :tipo, presence: true
  validates :codigo, uniqueness: true

  validate :enough_amount

  def enough_amount
    product = Produto.find(produto_id)
    if product.amount < quantidade
    errors.add(:base, 'Não há estoque suficiente!')
    end
  end

  after_create :update_product_amount

  private 
  def update_product_amount
    product = Produto.find(produto_id)
    if tipo == 'Venda'
    	if product.amount >= quantidade
      		product.decrement!(:amount, quantidade)
    	end
    elsif tipo == 'Compra'
      		product.increment!(:amount, quantidade)
    end
  end
end
