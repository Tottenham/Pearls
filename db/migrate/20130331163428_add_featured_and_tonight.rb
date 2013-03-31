class AddFeaturedAndTonight < ActiveRecord::Migration
  add_column :girls, :tonight, :integer
  add_column :girls, :featured, :integer
end
