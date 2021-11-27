class Product < ApplicationRecord
  has_many :line_items

  validates :title, :description, :image_url, presence:{message: "%{value} must be present"}
  validates :title, uniqueness:{case_sensitive: false},length:{in: 5..20}
  validates :image_url, allow_blank: true,format:{with: %r{\.(gif|jpeg|png|jpg)\z}i,
                                                  message: "must be image extenssinom"}
  validates :price ,numericality: {greater_than: 0.0}

end
