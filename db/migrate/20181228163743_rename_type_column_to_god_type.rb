class RenameTypeColumnToGodType < ActiveRecord::Migration[5.2]
  def change
    rename_column :gods, :type, :god_type
  end
end
