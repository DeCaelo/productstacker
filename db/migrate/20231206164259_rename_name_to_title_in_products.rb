class RenameNameToTitleInProducts < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :name, :title
  end
end
