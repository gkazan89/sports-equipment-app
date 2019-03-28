class Item < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :sport, presence: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  belongs_to :supplier

  has_many :images

  has_many :orders
  

  def discounted?
    price < 200
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(item_id: id)
  # end

  def image_urls
    images.map {|image| image.url}
  end
end
