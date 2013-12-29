class AddIndicesToEvents < ActiveRecord::Migration
  def self.up
    add_index :events, :user_id
    add_index :events, :when
  end

  def self.down
    remove_index :events, :user_id
    remove_index :events, :when
  end
end
