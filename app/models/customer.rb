class Customer < ApplicationRecord
  has_one :order
  belongs_to :house
end
