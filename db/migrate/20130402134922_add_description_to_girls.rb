class AddDescriptionToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :description, :string, :limit => 400
  end
end
