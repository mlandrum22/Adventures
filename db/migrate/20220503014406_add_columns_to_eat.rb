class AddColumnsToEat < ActiveRecord::Migration[7.0]
  def change
    add_column :eats, :part_of_town, :string
    add_column :eats, :address, :string
  end
end
