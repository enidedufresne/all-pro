class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.string :text
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
