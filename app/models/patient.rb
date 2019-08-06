class Patient < ApplicationRecord
  validates :full_name, :address, :lat, :lng, :phone, presence: true
  validates :gender, :date_of_birth, presence: false
end
