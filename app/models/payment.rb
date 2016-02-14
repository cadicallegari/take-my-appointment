class Payment < ActiveRecord::Base
  belongs_to :client

  validates :due_date, :ref_date, :client, presence: true
  validates :value, presence: true, numericality: { greater_than: 0.00 }
end
