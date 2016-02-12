class Phone < ActiveRecord::Base
  enum type: [ :celphone, :home, :work, :other ]

  belongs_to :client

  validates :area_code, :number, :client, presence: true
end
