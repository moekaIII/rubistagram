class RenameImageColumnToIcon < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image, :icon
  end
end
