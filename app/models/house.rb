class House < ApplicationRecord
  has_one :customer

  # validates :name, presence: true
  # validates :phone_number, presence: true
end
