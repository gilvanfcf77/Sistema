class Produto < ActiveRecord::Base

validates :name, presence: true
validates :price, presence: true
validates :code, presence: true
validates :amount, presence: true
validates :code, uniqueness: true

mount_uploader :picture, PictureUploader


def self.search(search)
  if search.present?
    where('code LIKE ?', "%#{search}%")
  else
    where(true)
  end
end


end
