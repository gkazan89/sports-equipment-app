class Supplier < ApplicationRecord
  # def items
  #   Item.where(supplier_id: id)
  # end

  has_many :items
end
