class AddClassificationToImcs < ActiveRecord::Migration[6.0]
  def change
    add_column :imcs, :imc, :float
    add_column :imcs, :classification, :string
    add_column :imcs, :grade, :string
  end
end
