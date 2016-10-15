class Negocio < ActiveRecord::Base
belongs_to :produto
validates :produto, presence: true
validates :quantidade, presence: true
validates :codigo, presence: true
validates :tipo, presence: true
validates :codigo, uniqueness: true
end
