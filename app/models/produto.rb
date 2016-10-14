class Produto < ActiveRecord::Base

mount_uploader :picture, PictureUploader


def self.search(search)
  if search.present?
    where('code LIKE ?', "%#{search}%")
  else
    where(true)
  end
end


end
