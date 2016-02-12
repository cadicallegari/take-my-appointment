class Client < ActiveRecord::Base
  belongs_to :address
  has_many   :phones
  has_many   :payments

  validates :name, :birth_date, presence: true
end
