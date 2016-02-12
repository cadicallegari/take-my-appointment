class Address < ActiveRecord::Base
  validates :street, :postal_code, :number, presence: true
end
