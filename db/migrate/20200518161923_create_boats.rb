class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
