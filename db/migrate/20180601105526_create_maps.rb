class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :post

      t.timestamps
    end
     add_index :maps, [:post_id]
  end
end
