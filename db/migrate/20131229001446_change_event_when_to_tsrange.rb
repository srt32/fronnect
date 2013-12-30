class ChangeEventWhenToTsrange < ActiveRecord::Migration
  def self.up
    remove_column :events, :when
    add_column :events, :when, :tsrange
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration.new
  end
end
