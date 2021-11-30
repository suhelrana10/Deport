class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)

    current_item = line_items.find_by(product_id: product)
    if current_item
       current_item.counter =  current_item.counter + 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item

  end


  def total_amount
    # line_items
      line_items.to_a.sum {|item|  item.total_price}
  end

  def show
    line_items.each do |item|

      item
    end

  end

end
