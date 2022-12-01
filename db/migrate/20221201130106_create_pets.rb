class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :address
      t.datetime :last_seen_at
      t.string :species
      t.string :image_url

      t.timestamps
    end
  end
end
