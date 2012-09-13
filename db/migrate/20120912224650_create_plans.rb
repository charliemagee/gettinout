class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :event_id
      t.integer :companion_id

      t.timestamps
    end
  end
end
