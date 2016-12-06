class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :rooms, :accomodate, :accommodate
  end
end
