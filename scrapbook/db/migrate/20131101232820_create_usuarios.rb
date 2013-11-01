class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
			t.string :nome, limit:80
			t.string :email, limit:60
      t.timestamps
    end
  end
end
