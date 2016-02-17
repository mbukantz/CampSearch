class CreateCampactivities < ActiveRecord::Migration
  def change
    create_table :campactivities do |t|
      t.integer :camp_id
      t.integer :activity_id
      t.timestamps null: false
    end
  end
end
