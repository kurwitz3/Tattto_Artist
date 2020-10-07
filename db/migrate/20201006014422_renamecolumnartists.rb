class Renamecolumnartists < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists , :password , :password_digest
  end
end
