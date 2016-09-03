class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :paid_at
      t.references :student, index: true, foreign_key: true
      t.string :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
