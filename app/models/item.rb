class Item < ApplicationRecord
  def discounted?
    price < 200
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
