class RemoveBoolean < ActiveRecord::Migration
  change_column :girls, :featured, :integer
  change_column :girls, :tonight, :integer
end
