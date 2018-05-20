class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :campany
      t.string :city
      t.string :sake_name
      t.string :kana_name

      t.timestamps
    end
  end
end
