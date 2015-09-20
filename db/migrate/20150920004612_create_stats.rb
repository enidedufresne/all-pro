class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :stat_name
      t.integer :position_id
      t.integer :sport_id
      t.references :user, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
