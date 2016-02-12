class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :due_at
      t.date :ref_date
      t.datetime :paid_at
      t.decimal :value, scale: 2, precision: 2

      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
