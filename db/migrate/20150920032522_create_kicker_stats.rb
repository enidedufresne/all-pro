class CreateKickerStats < ActiveRecord::Migration
  def change
    create_table :kicker_stats do |t|
      t.string :position_name
      t.string :shorthand
      t.integer :sport_id
      t.integer :position_id
      t.string :sport_name
      t.string :event
      t.integer :games_played
      t.boolean :win
      t.boolean :loss
      t.integer :wins
      t.integer :losses
      t.integer :field_goals
      t.references :user, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.references :sport, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
