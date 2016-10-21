class Negocio < ActiveRecord::Base
  belongs_to :produto
  validates :produto, presence: true
  validates :quantidade, presence: true
  validates :codigo, presence: true
  validates :tipo, presence: true
  validates :codigo, uniqueness: true

  after_create :update_product_amount

  private 
  def update_product_amount
    product = Produto.find(produto_id)
    if tipo == 'Venda'
      product.decrement!(:amount, quantidade)
    elsif tipo == 'Compra'
      product.increment!(:amount, quantidade)
    end
  end

end
