class Order < ApplicationRecord
  validates :name, :email, :address, presence: true
  # validates :pay_type, inclusion: pay_types.keys
  #
  has_many :line_items, dependent: :destroy

  enum pay_type: {
    # "Check"  => 0,
    # "Credit Card"  => 1,
    # "Purchase Order"  => 1,exit
    #
    Check: 19, Credit:2, Purchase:3
  }

  def output
    name
  end


  def add_line_item_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end



  end

end

