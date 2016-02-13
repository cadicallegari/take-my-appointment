class Phone < ActiveRecord::Base
  enum type: [ :celphone, :home, :work, :other ]

  belongs_to :client

  validates :type, :client, presence: true

  validates :number, presence: true, numericality: true,
    length: { minimum: 8, maximum: 10 }

  validates :area_code, presence: true, numericality: true,
    length: { minimum: 2, maximum: 2 }
end
