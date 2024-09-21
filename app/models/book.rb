class Book < ApplicationRecord
  has_one_attched :image
  belongs_to :user

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
end