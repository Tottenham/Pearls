class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :name
      t.string :age
      t.string :nationality
      t.string :dress_size
      t.string :bust_size
      t.string :orientation
      t.integer :category_id

      t.timestamps
    end
  end
end
