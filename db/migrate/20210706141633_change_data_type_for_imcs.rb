class ChangeDataTypeForImcs < ActiveRecord::Migration[6.0]
  def change
    change_column :imcs, :height, :float
    change_column :imcs, :weight, :float
  end
end
