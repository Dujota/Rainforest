class Product < ApplicationRecord

  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }

  has_many :reviews

  def price_in_dollars
  price_in_dollars = price.to_f / 100
  sprintf("$%.2f", price_in_dollars)
  end


end
