class RenameCampanyToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :campany, :company
  end
end
