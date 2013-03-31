class AddColumnFeaturedToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :featured, :boolean
  end
end
