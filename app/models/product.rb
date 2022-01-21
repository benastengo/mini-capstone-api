class Product < ApplicationRecord

  validates :name, :price, :image_url, :description, :quantity, presence: true
  validates :price, numericality: { :greater_than_or_equal_to => 0 }
  validates :description, length: { in: 10..500 }
  validates :name, :description, uniqueness: true
  validates :quantity, numericality: { only_integer: true}

  belongs_to :supplier

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  scope :discounted, -> (discount_value) { where("(price) < ? ", discount_value) }
end