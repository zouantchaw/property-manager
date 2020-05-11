class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.text :description
      t.string :rent 
      t.integer :user_id
    end
  end
end
