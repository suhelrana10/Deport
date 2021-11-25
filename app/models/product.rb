class Product < ApplicationRecord

  validates :title, :description, :image_url, presence:{message: "%{value} must be present"}
  validates :title, uniqueness:{case_sensitive: false}
  validates :image_url, allow_blank: true,format:{with: %r{\.(gif|jpeg|png|jpg)\z}i,
                                                  message: "must be image extenssinom"}
  validates :price ,numericality: {greater_than: 0.0}

end
