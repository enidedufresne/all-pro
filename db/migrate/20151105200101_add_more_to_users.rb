class AddMoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :institution, :string
    add_column :users, :year, :string
    add_column :users, :coach_name, :string
    add_column :users, :title, :string
    add_column :users, :coach_phone, :string
    add_column :users, :gpa, :float
    add_column :users, :feet, :integer
    add_column :users, :inches, :integer
    add_column :users, :weight, :integer
    add_column :users, :bmi, :float
    add_column :users, :bench, :integer
  end
end
