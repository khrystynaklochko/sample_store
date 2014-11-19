class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  def total_price
    if quantity.present?
      product.price * quantity 
    end
  end
end
