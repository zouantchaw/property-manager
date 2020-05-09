class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :description
      t.integer :rent 
      t.integer :user_id
    end
  end
end
