class CreateAdventures < ActiveRecord::Migration[7.0]
  def change
    create_table :adventures do |t|
      t.string :activity
      t.string :location
      t.string :description
      t.string :have_we_did_it

      t.timestamps
    end
  end
end
