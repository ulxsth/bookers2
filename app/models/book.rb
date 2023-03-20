class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  def get_image(width, height)
    unless image.attached?
      path = Rails.root.join('app/assets/images/no-image.jpg')
      image.attach(io: File.open(path), filename: 'default-image.png', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
    image
  end
end
