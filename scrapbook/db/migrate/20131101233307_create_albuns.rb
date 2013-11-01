class CreateAlbuns < ActiveRecord::Migration
  def change
    create_table :albuns do |t|
    	t.string :descricao, limit: 45
    	t.integer :usuario_id
      t.timestamps
    end
  end
end
