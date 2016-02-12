class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.date :birth_date

      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
