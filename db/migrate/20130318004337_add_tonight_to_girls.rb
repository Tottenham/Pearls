class AddTonightToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :tonight, :boolean
  end
end
