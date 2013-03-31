class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :girl_id
      t.string :type

      t.timestamps
    end
  end
end
