class Payment < ActiveRecord::Base
  belongs_to :client

  validates :due_at, :ref_date, :value, presence: true
end
