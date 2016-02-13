class Address < ActiveRecord::Base

  validates :number,      presence: true
  validates :street,      presence: true, length: { minimum: 5 }
  validates :postal_code, presence: true, length: { minimum: 8 }
end
