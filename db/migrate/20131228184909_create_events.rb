class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :venue
      t.string :address
      t.daterange :when

      t.timestamps
    end
  end
end
