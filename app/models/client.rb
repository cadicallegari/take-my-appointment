class Client < ActiveRecord::Base
  belongs_to :address

  has_many   :phones
  has_many   :payments

  validates :birth_date, presence: true
  validates :name, presence: true, length: { minimum: 4 }
end
