class ChangeGradeToObesityOnImcs < ActiveRecord::Migration[6.0]
  def change
    rename_column(:imcs, :grade, :obesity)
  end
end
