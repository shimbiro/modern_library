class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :ISBN
      t.integer :user_id
      t.integer :quantity

      t.timestamps
    end
  end
end
