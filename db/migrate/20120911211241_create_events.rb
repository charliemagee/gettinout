class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.integer :activity_id

      t.timestamps
    end
  end
end
