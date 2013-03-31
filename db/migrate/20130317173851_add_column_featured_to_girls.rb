class AddColumnFeaturedToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :featured, :integer
  end
end
