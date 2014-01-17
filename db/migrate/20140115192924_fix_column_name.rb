class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :start_date, :starts_at
  end
end
