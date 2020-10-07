class Addpasswordartists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :password, :string 
  end
end
