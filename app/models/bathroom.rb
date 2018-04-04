class Bathroom < ApplicationRecord

  validates :location, presence: true
  validates :gender, presence: true, inclusion: { in: ["male", "female", "unisex" ] }
  validates :size, presence: true, inclusion: { in: ["king", "queen"] }
  has_many :reviews

end
