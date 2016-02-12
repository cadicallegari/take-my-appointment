class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.decimal :number
      t.string :postal_code

      t.timestamps null: false
    end
  end
end
