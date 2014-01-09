class AddStartDateAndEndDateToEvents < ActiveRecord::Migration
  def up
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
    Event.reset_column_information
    Event.find_each do |e|
      e.update_column :start_date, e.when.begin
      e.update_column :end_date, e.when.end
    end
    remove_column :events, :when
  end

  def down
    add_column :events, :when, :tsrange
    Event.reset_column_information
    Event.find_each do |e|
      e.update_column :when, e.start_date..e.end_date
    end
    remove_column :events, :start_date
    remove_column :events, :end_date
  end
end
