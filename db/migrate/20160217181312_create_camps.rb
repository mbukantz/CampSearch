class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :name
      t.string :category
      t.integer :days
      t.string :city
      t.string :state
      t.integer :cost
      t.timestamps null: false
    end
  end
end
