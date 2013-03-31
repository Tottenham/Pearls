class ChangeColumnNameTypeToClassification < ActiveRecord::Migration

	rename_column :assets, :type, :classification

end
