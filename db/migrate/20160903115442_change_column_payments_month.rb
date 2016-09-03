class ChangeColumnPaymentsMonth < ActiveRecord::Migration
  def change
    change_column :payments, :year, 'integer using year::integer'
    change_column :payments, :month, 'integer using month::integer'
  end
end
