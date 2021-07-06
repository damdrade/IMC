class CreateImcs < ActiveRecord::Migration[6.0]
  def change
    create_table :imcs do |t|
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
