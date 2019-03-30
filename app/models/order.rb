class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_items
  has_many :items, through: :carted_items


  def update_all_totals
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_items.each do |carted_item|
      calculated_subtotal += carted_item.item.price * carted_item.quantity
      calculated_tax += carted_item.item.tax * carted_item.quantity
      calculated_total += carted_item.item.total * carted_item.quantity
    end
    self.subtotal = calculated_subtotal
    self.tax = calculated_tax
    self.total = calculated_total
    self.save
  end
end
