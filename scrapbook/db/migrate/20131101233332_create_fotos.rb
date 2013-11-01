class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
    	t.integer :album_id
    	t.integer :usuario_id
      t.timestamps
    end
  end
end
