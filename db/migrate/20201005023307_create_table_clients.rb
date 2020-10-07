class CreateTableClients < ActiveRecord::Migration[5.2]
 
    def change
      create_table :clients do |t|
        t.string :name 
        t.string :email 
        t.string :tattoo
        t.integer :artist_id
      end
  end
end
