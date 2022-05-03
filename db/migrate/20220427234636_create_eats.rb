class CreateEats < ActiveRecord::Migration[7.0]
  def change
    create_table :eats do |t|
      t.string :name
      t.string :number
      t.string :food_type
      t.string :url
      t.string :menu
      t.string :description
      t.string :lj_been
      t.string :michael_been

      t.timestamps
    end
  end
end
