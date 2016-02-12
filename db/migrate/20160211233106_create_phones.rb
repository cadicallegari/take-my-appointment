class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.decimal :area_code
      t.decimal :number
      t.integer :type, default: 0

      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
