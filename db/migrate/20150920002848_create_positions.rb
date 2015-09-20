class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :position_name
      t.string :shorthand
      t.boolean :offensive
      t.integer :sport_id
      t.integer :position_id
      t.references :sport, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
