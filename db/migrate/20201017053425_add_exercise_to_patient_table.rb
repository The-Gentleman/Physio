class AddExerciseToPatientTable < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :exercise, :string
  end
end
